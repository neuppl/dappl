(* 
This file generates dappl files 
that recreate the methodology used for DTProblog in
Derkinderen et al., ECAI 2020.

First:
- Convert parent nodes that are pure `flips` into a decision 
- any node of the BN that is not a decision has a 0.5 chance to introduce one

Two methods to add utilities:
- Select each term t (bound variable) and add a reward : int between [-50, 50]:
  - for t with probability 0.8;
  - for !t with probability 0.3. 
- Make 5 new variables, with a positive and negative utility. 
  Then assign them an arbitrary rule R such that R -> v.

Related helper functions are defined in experiments/util.ml.
*)

open Mk_expr
open Core
open Method

let zip_with_fn l r f = List.map (List.zip_exn l r) ~f:f
let mk_discrete (id : string) (pr : float list) =
  if Random.bool () then
    (* Helper functions *)
    let rec suffixes l = match l with | [] -> [] | _::xs' as xs -> xs::(suffixes xs') in
    let rec prefixes l = (match l with
    | []   -> [[]]
    | x::xs   -> []::List.map (prefixes xs) ~f:(fun li -> x :: li)) in
    (* zip is the re-weighted flips (invariant: last one is flip 1) *)
    let pr_suffixes = suffixes pr in
    let zip = zip_with_fn pr pr_suffixes (fun (a,b) ->
      let sum = List.fold b ~init:0. ~f:(+.) in a /. sum) in
    (* varnames is the list of variables that correspond to each category *)
    let varnames = List.init (List.length pr) ~f:(fun i -> id ^ Int.to_string i) in   
    (* varname_prefixes are the prefixes except for the entire list *)
    let varname_prefixes = List.drop_last_exn (prefixes varnames) in
    let flips = List.map zip ~f:(fun x -> "flip " ^ (Float.to_string x) ^ "") in
    let varname_prefixes_as_neg_and = 
      List.map varname_prefixes ~f:(fun l -> 
        String.concat ~sep:" && " 
          (List.map l ~f:(fun s -> "!"^s))) in
    let bindings = zip_with_fn varname_prefixes_as_neg_and flips
      (fun (s, f) -> if String.is_empty s then f else s ^ " && ( " ^ f ^ ")") in
    (* var <- prefix && (flip renormalized weight *)
    let letbinds = zip_with_fn varnames bindings (fun (v, b) -> 
      mk_bind_custom v b) in
    let expr = String.concat ~sep:"\n" (List.map letbinds ~f:fst) in
    (expr, (List.map letbinds ~f:snd))
  else
    let wt = 1. /. (Int.to_float (List.length pr)) in
    (* Helper functions *)
    let rec suffixes l = match l with | [] -> [] | _::xs' as xs -> xs::(suffixes xs') in
    let rec prefixes l = (match l with
    | []   -> [[]]
    | x::xs   -> []::List.map (prefixes xs) ~f:(fun li -> x :: li)) in
    (* zip is the re-weighted flips (invariant: last one is flip 1) *)
    let pr_suffixes = suffixes pr in
    let zip = zip_with_fn pr pr_suffixes (fun (a,b) ->
      let sum = List.fold b ~init:0. ~f:(+.) in a /. sum) in
    (* varnames is the list of variables that correspond to each category *)
    let varnames = List.init (List.length pr) ~f:(fun i -> id ^ Int.to_string i) in   
    (* varname_prefixes are the prefixes except for the entire list *)
    let varname_prefixes = List.drop_last_exn (prefixes varnames) in
    let flips = List.map zip ~f:(fun x -> "flip " ^ (Float.to_string x) ^ "") in
    let varname_prefixes_as_neg_and = 
      List.map varname_prefixes ~f:(fun l -> 
        String.concat ~sep:" && " 
          (List.map l ~f:(fun s -> "!"^s))) in
    let bindings = zip_with_fn varname_prefixes_as_neg_and flips
      (fun (s, f) -> if String.is_empty s then f else s ^ " && ( " ^ f ^ ")") in
    let bindings = List.zip_exn bindings pr in
    (* var <- prefix && (flip renormalized weight *)
    let letbinds = zip_with_fn varnames bindings (fun (v, (b,p)) -> 
      new_dec_or_bind_custom_with_prs v b p wt) in
    let expr = String.concat ~sep:"\n" (List.map letbinds ~f:fst) in
    (expr, (List.map letbinds ~f:snd))
(* takes a (guard, behavior) list and a final behavior and produces
x <- if guard[0] then behavior[0] else (if guard [1] ... else final_behavior);
*)
let rec mk_nested_ite_h : (varname * string) list -> string -> string = fun l s ->
  match l with
  | [] -> s
  | (g, f)::xs -> mk_ite g [f ; (mk_nested_ite_h xs s)]
and mk_nested_ite = fun id l s -> let iteexp = mk_nested_ite_h l s in 
  mk_bind_custom id iteexp
and mk_nested_ite_prob = fun id l s f pr -> let iteexp = mk_nested_ite_h l s in 
  new_dec_or_bind_custom_with_prs id iteexp f pr

let transpose_lists lists =
  let rec transpose acc = function
    | [] -> List.rev acc
    | []::_ -> List.rev acc
    | xs -> 
        let heads, tails =
          let x = (List.map xs ~f:(fun l -> (List.hd_exn l, List.tl_exn l))) in
          List.map x ~f:fst , List.map x ~f:snd in
        transpose (heads :: acc) tails
  in
  transpose [] lists

let ite_discrete_to_discrete_ite (id : varname) : varname list -> (float list) list -> varname * varname list =
  fun vl wl ->
    if Random.bool () then
      (* let _ : unit = Printf.printf "Doing the %s \n" id in *)
      (* First transpose the probabilities. *)
      let wl_transpose = transpose_lists wl in
      (* let _ : unit =  Printf.printf "%i\n" (List.length wl_transpose) in  *)
      let last = List.map wl_transpose ~f:(fun x -> List.hd_exn (List.rev x)) in
      (* let _ : unit =  Printf.printf "%i\n" (List.length last) in *)
      let rest = List.map wl_transpose ~f:(fun x ->List.rev (List.tl_exn (List.rev x))) in
      (* let _ : unit =  Printf.printf "%i\n" (List.length rest) in *)
      let last_str = List.map last ~f:(fun x -> "flip " ^ Float.to_string x) in
      let rest_str = List.map rest ~f:(fun l -> List.map l ~f:(fun x -> "flip " ^ Float.to_string x)) in  
      let varnames = List.init (List.length wl_transpose) ~f:(fun i -> id ^ Int.to_string i) in 
      let rest_str = List.zip_exn varnames (List.map rest_str ~f:(fun x -> List.zip_exn vl x)) in
      let final = zip_with_fn rest_str last_str (fun ((id, l),c) -> mk_nested_ite id l c) in
      let expr = String.concat ~sep:"\n" (List.map final ~f:fst) in
      (expr, (List.map final ~f:snd))
    else 
      (* let _ : unit = Printf.printf "Doing the %s \n" id in *)
      (* First transpose the probabilities. *)
      let wl_transpose = transpose_lists wl in
      (* let _ : unit =  Printf.printf "%i\n" (List.length wl_transpose) in  *)
      let last = List.map wl_transpose ~f:(fun x -> List.hd_exn (List.rev x)) in
      (* let _ : unit =  Printf.printf "%i\n" (List.length last) in *)
      let rest = List.map wl_transpose ~f:(fun x ->List.rev (List.tl_exn (List.rev x))) in
      (* let _ : unit =  Printf.printf "%i\n" (List.length rest) in *)
      let last_str = List.map last ~f:(fun x -> "flip " ^ Float.to_string x) in
      let rest_str = List.map rest ~f:(fun l -> List.map l ~f:(fun x -> "flip " ^ Float.to_string x)) in  
      let varnames = List.init (List.length wl_transpose) ~f:(fun i -> id ^ Int.to_string i) in 
      let rest_str = List.zip_exn varnames (List.map rest_str ~f:(fun x -> List.zip_exn vl x)) in
      let last_str = List.zip_exn last_str last in
      let wt = 1. /. (Int.to_float (List.length last)) in 
      let final = zip_with_fn rest_str last_str 
        (fun ((id, l),(c, p)) -> mk_nested_ite_prob id l c p wt) in
      let expr = String.concat ~sep:"\n" (List.map final ~f:fst) in
      (expr, (List.map final ~f:snd))      

let cartesian l l' = 
  List.concat (List.map l ~f:(fun e -> List.map l' ~f:(fun e' -> (e,e'))))

(* Benchmark 1: Earthquake 
  https://www.bnlearn.com/bnrepository/discrete-small.html#earthquake
*)
let mk_earthquake_vars () : string * varname list =
  (* Creates earthquake variable *)
  let (earthquake, ed, _) = mk_dec 1 in
  let earthquake = "// " ^ ed ^ " is variable earthquake\n" ^ earthquake in
  (* Creates burglary variable *)
  let (burglary, bd, _) = mk_dec 1 in
  let burglary = "// " ^ bd ^ " is variable burglary\n" ^ burglary in
  (* Creates alarm variable *)
  let (alarm, var) = 
    let t = [(mk_ite ed ["flip 0.95"; "flip 0.94"]) ;
              (mk_ite ed ["flip 0.29" ; "flip 0.001"])]  in
    let expr = mk_ite bd t in
    new_dec_or_bind expr 0.95 in
  let alarm = "// " ^ var ^ " is variable alarm\n" ^ alarm in
  (* Creates maryCalls variable *)
  let (maryCalls, mc) = 
    let expr = mk_ite var ["flip 0.7"; "flip 0.01"] in
    new_dec_or_bind expr 0.7 in
  let maryCalls = "// " ^ mc ^ " is variable maryCalls\n" ^ maryCalls in
  (* Creates johnCalls variable *)
  let (johnCalls, jc) = 
    let expr = mk_ite var ["flip 0.9"; "flip 0.05"] in
    new_dec_or_bind expr 0.9 in
  let johnCalls = "// " ^ jc ^ " is variable johnCalls\n" ^ johnCalls in
  let prog = String.concat ~sep:"\n" [earthquake; burglary; alarm ; maryCalls ; johnCalls] in 
  let bound_vars = [ed; bd; var ; mc ; jc] in 
  (prog, bound_vars)

let mk_earthquake (m :methodology) =
  let (program, bv) = mk_earthquake_vars () in
  match m with
  | Select -> 
    let s = method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = method_2 bv in 
    String.concat ~sep:"\n" [program; s]

(* Create 2j many randomly generate earthquake files, j many for each methodology*)
let mk_earthquake_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many earthquake files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_earthquake (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_earthquake (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done


let mk_asia_vars () : string * varname list =
  (* Creates asia variable *)
  let (asia, asiavar, _) = mk_dec 1 in
  let asia = "// " ^ asiavar ^ " is variable asia\n" ^ asia in
  (* Creates smoke variable *)
  let (smoke, smokevar, _) = mk_dec 1 in
  let smoke = "// " ^ smokevar ^ " is variable smoke\n" ^ smoke in
  (* Creates lung variable *)
  let (lung, lungvar) = 
    let expr = mk_ite smokevar ["flip 0.1" ; "flip 0.01"] in
    new_dec_or_bind expr 0.1 in
  let lung = "// " ^ lungvar ^ " is variable lung\n" ^ lung in
  (* Creates tub variable *)
  let (tub, tubvar) = 
    let expr = mk_ite asiavar ["flip 0.05" ; "flip 0.01"] in
    new_dec_or_bind expr 0.05 in
  let tub = "// " ^ tubvar ^ " is variable tub\n" ^ tub in
  (* Creates bronc variable *)
  let (bronc, broncvar) = 
    let expr = mk_ite smokevar ["flip 0.6" ; "flip 0.3"] in
    new_dec_or_bind expr 0.6 in
  let bronc = "// " ^ broncvar ^ " is variable bronc\n" ^ bronc in
  (* Creates either variable *)
  let (either, eithervar) = 
    let expr = lungvar ^ " || " ^ tubvar in
    new_dec_or_bind expr 0.5 in 
  let either = "// " ^ eithervar ^ " is variable either\n" ^ either in 
  (* Creates xray variable *)
  let (xray, xrayvar) = 
    let expr = mk_ite eithervar ["flip 0.98" ; "flip 0.05"] in
    new_dec_or_bind expr 0.98 in
  let xray = "// " ^ xrayvar ^ " is variable xray\n" ^ xray in 
  (* Creates dysp variable *)
  let (dysp, dyspvar) = 
    let t = [(mk_ite eithervar ["flip 0.9"; "flip 0.8"]) ;
              (mk_ite eithervar ["flip 0.7" ; "flip 0.1"])]  in
    let expr = mk_ite broncvar t in
    new_dec_or_bind expr 0.9 in
  let dysp = "// " ^ dyspvar ^ " is variable dysp\n" ^ dysp in
  let prog = String.concat ~sep:"\n" [asia ; smoke ; lung ; tub ; bronc ; either ; xray ; dysp] in 
  let bound_vars = [asiavar ; smokevar ; lungvar ; tubvar ; broncvar ; eithervar ; xrayvar ; dyspvar] in 
  (prog, bound_vars)

let mk_asia (m :methodology) =
  let (program, bv) = mk_asia_vars () in
  match m with
  | Select -> 
    let s = method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = method_2 bv in 
    String.concat ~sep:"\n" [program; s]

(* Create 2j many randomly generate asia files, j many for each methodology*)
let mk_asia_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many asia files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/asia_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_asia (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/asia_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_asia (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done

(* Benchmark 3: Survey 
  https://www.bnlearn.com/bnrepository/discrete-small.html#survey
*)
let mk_uniform f1 f2 : string * varname list = 
  let flip1 = "flip " ^ (Float.to_string f1) in
  let flip2 = "flip " ^ (Float.to_string f2) in
  let (adult, adultvar) = mk_bind flip1 in
  let (young, youngvar) = mk_bind ("!" ^ adultvar ^ " && " ^ flip2) in
  let (old, oldvar) = mk_bind ("!" ^ youngvar ^ " && !" ^ adultvar) in
  let s = String.concat ~sep:"\n" [adult; young; old] in  
  (s, [adultvar;youngvar;oldvar])

let rec pair_lists list1 list2 =
  match list1 with
  | [] -> []
  | hd1::tl1 -> List.map list2 ~f:(fun x -> (hd1, x)) @ pair_lists tl1 list2

let mk_high_uni (l1 : varname list) (l2 : varname list) : string * varname * varname =
  let lst = List.map (pair_lists l1 l2) ~f:(fun (a,b) -> a ^ " && " ^ b) in
  let list_of_probs = List.map [0.72; 0.7; 0.75 ; 0.64 ; 0.88 ; 0.9] ~f:Float.to_string in
  let list_of_probs = List.map list_of_probs ~f:(fun s -> "flip " ^ s) in
  let lst = List.zip_exn lst list_of_probs in
  let ites = List.map lst ~f:(fun (a,b) -> mk_ite a [b ; "false"]) in
  let bound = List.map ites ~f:mk_bind in
  let vars = List.map bound ~f:(fun (_,b) -> b) in
  let (high, highvar) = mk_bind (String.concat ~sep:" || " vars) in
  let (uni, univar) = mk_bind ("!"^highvar) in
  let expr = String.concat ~sep:"\n" (List.map bound ~f:(fun (a,_) -> a) @ [high; uni]) in
  (expr, highvar, univar)

let mk_car_train_other empself smallbig vars : string * varname =
  let lst = List.map (pair_lists empself smallbig) ~f:(fun (a,b) -> a ^ " && " ^ b) in
  let lst = List.zip_exn lst vars in
  let f = fun (a,b) -> (fun c -> mk_ite a [b;c]) in
  mk_bind (List.fold_right lst ~f:f ~init:"false")

let mk_survey_vars () : string * varname list =
  (* Creates adult, young, old variables *)
  let (age, agevarlist) = mk_uniform 0.5 0.6 in
  (* Creates m,f variables *)
  let (m, mvar) = mk_bind "flip 0.6" in 
  let (f, fvar) = mk_bind ("!" ^ mvar) in
  (* Creates high, uni variables *)
  let (highuni, highvar, univar) = mk_high_uni agevarlist [mvar;fvar] in
  (* Creates emp/self variable *)
  let (emp, empvar) = mk_bind (mk_ite highvar ["flip 0.96" ; "flip 0.92"]) in
  let (self, selfvar) = mk_bind ("!"^empvar) in
  (* Creates small/big variable *)
  let (small, smallvar) = mk_bind (mk_ite highvar ["flip 0.25" ; "flip 0.2"]) in
  let (big, bigvar) = mk_bind ("!"^smallvar) in
  (* Creates car,train,other variables *)
  let (cto1, cto1list) = mk_uniform 0.48 0.807699 in
  let (cto2, cto2list) = mk_uniform 0.58 0.571429 in 
  let (cto3, cto3list) = mk_uniform 0.56 0.818183 in 
  let (cto4, cto4list) = mk_uniform 0.7 0.7 in 
  let cars = List.map [cto1list ; cto2list ; cto3list ; cto4list] ~f:(fun l -> List.nth_exn l 0) in
  let trains = List.map [cto1list ; cto2list ; cto3list ; cto4list] ~f:(fun l -> List.nth_exn l 1) in
  let others = List.map [cto1list ; cto2list ; cto3list ; cto4list] ~f:(fun l -> List.nth_exn l 2) in
  let empself, smallbig = [empvar ; selfvar] ,  [smallvar; bigvar] in
  let (car, carvar) = mk_car_train_other empself smallbig cars in
  let (train, trainvar) = mk_car_train_other empself smallbig trains in
  let (other, othervar) = mk_car_train_other empself smallbig others in
  let prog = String.concat ~sep:"\n" [age; m; f; highuni ; emp ;self ;small;big ; cto1 ; cto2 ; cto3 ; cto4 ;car ; train; other] in 
  let bound_vars = agevarlist @ [mvar ; fvar ; highvar ; univar; empvar ; selfvar; smallvar ; bigvar ;carvar ; trainvar ; othervar] in 
  (prog, bound_vars)

let mk_survey (m :methodology) =
  let (program, bv) = mk_survey_vars () in
  match m with
  | Select -> 
    let s = method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = method_2 bv in 
    String.concat ~sep:"\n" [program; s]

(* Create 2j many randomly generate survey files, j many for each methodology*)
let mk_survey_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many survey files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/survey_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_survey (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/survey_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_survey (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done

(* Benchmark 4: Insurance
  https://www.bnlearn.com/documentation/man/insurance.html
*)

let rec mk_insurance_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many insurance files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/insurance_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_insurance (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/insurance_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_insurance (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done
and mk_insurance (m : methodology) =
  let (program, bv) = mk_insurance_vars () in
  match m with
  | Select -> 
    let s = method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = method_2 bv in 
    String.concat ~sep:"\n" [program; s]
and mk_insurance_vars () : string * varname list = 
  let prog = ref []  in
  let boundvars = ref [] in
  (* Age *)
  let (ageExp, ageVars) = mk_discrete "age" [0.2 ; 0.6 ; 0.2] in
  let _ :unit = prog := ageExp :: !prog in
  let _ : unit =  boundvars :=  List.append ageVars !boundvars in  
  (* SocioEcon *)
  let (socioEconExp, socioEconVars) = 
    ite_discrete_to_discrete_ite "SocioEcon" (List.drop_last_exn ageVars)
      [[0.4; 0.4; 0.19;0.01]; [0.4; 0.4; 0.19;0.01];[0.5; 0.2; 0.29;0.01]] in
  let _ :unit = prog :=  socioEconExp :: !prog in
  let _ : unit =  boundvars :=  List.append socioEconVars !boundvars in
  (* OtherCar *)
  let (otherCarExp, otherCarVars) = 
    ite_discrete_to_discrete_ite "OtherCar" (List.drop_last_exn socioEconVars)
      [[0.5; 0.5] ; [0.8 ; 0.2] ; [0.9 ; 0.1] ; [0.95 ; 0.05]] in
  let _ : unit =  prog :=  otherCarExp :: !prog in
  let _ : unit =  boundvars :=  List.append otherCarVars !boundvars in
  (* RiskAversion *)
  let (riskExp, riskVars) = 
    let list_of_vars = cartesian ageVars socioEconVars in
    (* let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in *)
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "RiskAversion" (List.drop_last_exn list_of_vars)
      [[0.020000;0.580000;0.300000;0.100000];
      [0.020000;0.380000;0.500000;0.100000];
      [0.020000;0.480000;0.400000;0.100000];
      [0.020000;0.580000;0.300000;0.100000];
      [0.015000;0.285000;0.500000;0.200000];
      [0.015000;0.185000;0.600000;0.200000];
      [0.015000;0.285000;0.500000;0.200000];
      [0.015000;0.285000;0.400000;0.300000];
      [0.010000;0.090000;0.400000;0.500000];
      [0.010000;0.040000;0.350000;0.600000];
      [0.010000;0.090000;0.400000;0.500000];
      [0.010000;0.090000;0.400000;0.500000]] in
  let _ :unit = prog :=  riskExp :: !prog in
  let _ : unit =  boundvars :=  List.append riskVars !boundvars in
  (* Antitheft *)
  let (antiExp, antiVars) = 
    let list_of_vars = cartesian riskVars socioEconVars in
    (* let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in *)
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "AntiTheft" (List.drop_last_exn list_of_vars)
      [[0.000001] ; [0.000001] ; [0.050000] ; [0.500000];
      [0.000001] ; [0.000001] ; [0.20000] ; [0.500000] ;
      [0.1] ; [0.3] ; [0.9] ; [0.8] ;
      [0.950000] ; [0.999999] ; [0.9999999] ; [0.999999]
      ] in
  let (notantiExp, notantiVar) = mk_bind_custom "NotAntiTheft0" ("! " ^ (List.hd_exn antiVars)) in
  let _ : unit =  prog :=  notantiExp :: antiExp :: !prog in
  let antiVars = List.rev (notantiVar :: antiVars) in
  let _ : unit =  boundvars := List.append antiVars !boundvars in
  (* HomeBase *)
  let (homeExp, homeVars) = 
    let list_of_vars = cartesian riskVars socioEconVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "HomeBase" (List.drop_last_exn list_of_vars)
      [[0.000001;0.800000;0.049999;0.150000];
      [0.150000;0.800000;0.040000;0.010000];
      [0.350000;0.600000;0.040000;0.010000];
      [0.489999;0.500000;0.000001;0.010000];

      [0.000001;0.800000;0.050000;0.149999];
      [0.010000;0.250000;0.600000;0.140000];
      [0.200000;0.400000;0.300000;0.100000];
      [0.950000;0.000001;0.000001;0.049998];

      [0.000001;0.800000;0.050000;0.149999];
      [0.299999;0.000001;0.600000;0.100000];
      [0.500000;0.000001;0.400000;0.099999];
      [0.850000;0.000001;0.001000;0.148999];
      
      [0.000001;0.800000;0.050000;0.149999];
      [0.950000;0.000001;0.024445;0.025554];
      [0.999997;0.000001;0.000001;0.000001];
      [0.999997;0.000001;0.000001;0.000001]] in
  let _ : unit =  prog :=  homeExp :: !prog in
  let _ : unit =  boundvars := List.append homeVars !boundvars in
  (* SeniorTrain *)
  let (seniorExp, seniorVars) = 
    let list_of_vars = cartesian ageVars riskVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "SeniorTrain" (List.drop_last_exn list_of_vars)
      [[0.00000] ; [0.00000]; [0.00000]; [0.00000];
      [0.00000] ; [0.00000]; [0.00000]; [0.00000];
      [0.000001] ; [0.000001]; [0.3]; [0.9]] in
  let (notseniorExp, _notseniorVar) = 
      mk_bind_custom "NotSeniorTrain0" ("! " ^ (List.hd_exn seniorVars)) in
  let _ : unit =  prog :=  notseniorExp :: seniorExp :: !prog in
  let _ : unit =  boundvars := List.append seniorVars !boundvars in
  (* DrivingSkill *)
  let (dskillExp, dskillVars) = 
    let list_of_vars = cartesian ageVars [(List.hd_exn seniorVars); "NotSeniorTrain0"] in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "DrivingSkill" (List.drop_last_exn list_of_vars)
      [[0.500000;0.450000;0.050000];[0.500000;0.450000;0.050000];
      [0.300000;0.600000;0.100000]; [0.300000;0.600000;0.100000];
      [0.100000;0.600000;0.300000] ; [0.400000;0.500000;0.100000]] in
  let _ : unit =  prog :=  dskillExp :: !prog in
  let _ : unit =  boundvars := List.append dskillVars !boundvars in
  (* DrivingHistory *)
  let (dhistExp, dhistVars) = 
    let list_of_vars = cartesian dskillVars riskVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "DrivingHistory" (List.drop_last_exn list_of_vars)
      [[0.001000;0.004000;0.995000]; 
      [0.002000;0.008000;0.990000];
      [0.030000;0.150000;0.820000];
      [0.300000;0.300000;0.400000];

      [0.100000;0.300000;0.600000];
      [0.500000;0.300000;0.200000];
      [0.900000;0.070000;0.030000];
      [0.950000;0.040000;0.010000];

      [0.300000;0.300000;0.400000];
      [0.600000;0.300000;0.100000];
      [0.990000;0.009999;0.000001]; 
	    [0.999998;0.000001;0.000001]] in
  let _ : unit =  prog :=  dhistExp :: !prog in
  let _ : unit =  boundvars := List.append dhistVars !boundvars in
  (* DrivingQuality *)
  let (dqualExp, dqualVars) = 
    let list_of_vars = cartesian dskillVars riskVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "DrivingQuality" (List.drop_last_exn list_of_vars)
      [[1.000000;0.000000;0.000000]; 
      [1.000000;0.000000;0.000000]; 
      [1.000000;0.000000;0.000000]; 
      [1.000000;0.000000;0.000000]; 

      [0.500000;0.200000;0.300000];
      [0.300000;0.400000;0.300000];
      [0.000000;1.000000;0.000000];
      [0.000000;0.800000;0.200000];

      [0.300000;0.200000;0.500000];
      [0.010000;0.010000;0.980000];
      [0.000000;0.000000;1.000000]; 
	    [0.000000;0.000000;1.000000]] in
  let _ : unit =  prog :=  dqualExp :: !prog in
  let _ : unit =  boundvars := List.append dqualVars !boundvars in
  (* MakeModel *)
  let (modelExp, modelVars) = 
    let list_of_vars = cartesian socioEconVars riskVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "MakeModel" (List.drop_last_exn list_of_vars)
      [[0.100000;0.700000;0.200000;0.000000;0.000000];
      [0.100000;0.700000;0.200000;0.000000;0.000000];
      [0.100000;0.700000;0.200000;0.000000;0.000000];
	    [0.100000;0.700000;0.200000;0.000000;0.000000];

      [0.150000;0.200000;0.650000;0.000000;0.000000]; 
      [0.150000;0.200000;0.650000;0.000000;0.000000]; 
      [0.150000;0.200000;0.650000;0.000000;0.000000]; 
      [0.150000;0.200000;0.650000;0.000000;0.000000];

	    [0.200000;0.050000;0.300000;0.450000;0.000000]; 
      [0.200000;0.050000;0.300000;0.450000;0.000000]; 
      [0.200000;0.050000;0.300000;0.450000;0.000000]; 
	    [0.200000;0.050000;0.300000;0.450000;0.000000]; 

      [0.300000;0.010000;0.090000;0.400000;0.200000]; 
	    [0.300000;0.010000;0.090000;0.400000;0.200000]; 
      [0.300000;0.010000;0.090000;0.400000;0.200000]; 
      [0.300000;0.010000;0.090000;0.400000;0.200000]] in
  let _ : unit =  prog :=  modelExp :: !prog in
  let _ : unit =  boundvars := List.append modelVars !boundvars in
  (* VehicleYear *)
  let (vyearExp, vyearVars) = 
    let list_of_vars = cartesian socioEconVars riskVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "VehicleYear" (List.drop_last_exn list_of_vars)
      [[0.150000];[0.150000];[0.150000];[0.150000];
      [0.300000];[0.300000];[0.300000];[0.300000];
      [0.800000];[0.800000];[0.800000];[0.800000];
      [0.900000];[0.900000];[0.900000];[0.900000]] in
  let (notvyearExp, _notvyearVars) = 
      mk_bind_custom "NotVehicleYear0" ("! " ^ (List.hd_exn vyearVars)) in
  let _ : unit =  prog :=  notvyearExp :: vyearExp :: !prog in
  let _ : unit =  boundvars := List.append vyearVars !boundvars in
  (* Airbag *)
  let (airbagExp, airbagVars) = 
    let list_of_vars = cartesian modelVars [(List.hd_exn vyearVars); "NotVehicleYear0"] in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "Airbag" (List.drop_last_exn list_of_vars)
      [[1.000000]; 
	    [0.100000];
      [1.000000]; 
	    [0.050000];
      [1.000000]; 
	    [0.200000];
      [1.000000]; 
	    [0.600000];
      [1.000000]; 
	    [0.100000]] in
  let (notairbagExp, notairbagVars) = 
      mk_bind_custom "NotAirbag0" ("! " ^ (List.hd_exn airbagVars)) in
  let _ : unit =  prog :=  notairbagExp :: airbagExp :: !prog in
  let airbagVars = List.rev(notairbagVars :: airbagVars) in
  let _ : unit =  boundvars := List.append airbagVars !boundvars in
  (* Antilock *)
  let (antilockExp, antilockVars) = 
    let list_of_vars = cartesian modelVars [(List.hd_exn vyearVars); "NotVehicleYear0"] in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "Antilock" (List.drop_last_exn list_of_vars)
      [[0.900000]; 
	    [0.100000];
      [0.001000]; 
	    [0.0];
      [0.400000]; 
	    [0.00000];
      [0.990000]; 
	    [0.300000];
      [0.990000]; 
	    [0.150000]] in
  let (notantilockExp, notantilockVars) = 
      mk_bind_custom "NotAntilock0" ("! " ^ (List.hd_exn airbagVars)) in
  let _ : unit =  prog :=  notantilockExp :: antilockExp :: !prog in
  let antilockVars = List.rev(notantilockVars :: antilockVars) in
  let _ : unit =  boundvars := List.append antilockVars !boundvars in
  (* RuggedAuto *)
  let (rautoExp, rautoVars) = 
    let list_of_vars = cartesian modelVars [(List.hd_exn vyearVars); "NotVehicleYear0"] in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "RuggedAuto" (List.drop_last_exn list_of_vars)
      [[0.950000;0.040000;0.010000]; 
	    [0.950000;0.040000;0.010000];
      [0.500000;0.500000;0.000000]; 
	    [0.900000;0.100000;0.000000];
      [0.200000;0.600000;0.200000]; 
	    [0.050000;0.550000;0.400000];
      [0.100000;0.600000;0.300000]; 
	    [0.100000;0.600000;0.300000];
      [0.050000;0.550000;0.400000]; 
	    [0.050000;0.550000;0.400000];] in
  let _ : unit =  prog :=  rautoExp :: !prog in
  let _ : unit =  boundvars := List.append rautoVars !boundvars in
  (* Cushioning *)
  let (cushExp, cushVars) = 
    let list_of_vars = cartesian rautoVars airbagVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "Cushioning" (List.drop_last_exn list_of_vars)
      [[0.500000;0.300000;0.200000;0.000000]; 
	    [0.700000;0.300000;0.000000;0.000000];
      [0.000000;0.100000;0.600000;0.300000]; 
      [0.100000;0.600000;0.300000;0.000000];
      [0.000000;0.000000;0.000000;1.000000]; 
      [0.000000;0.000000;0.700000;0.300000];] in
  let _ : unit =  prog :=  cushExp :: !prog in
  let _ : unit =  boundvars := List.append cushVars !boundvars in
  (* GoodStudent *)
  let (gsExp, gsVars) = 
    let list_of_vars = cartesian socioEconVars ageVars in
    let _ : unit =  Printf.printf "%i" (List.length list_of_vars) in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "GoodStudent" (List.drop_last_exn list_of_vars)
      [[0.1]; [0.0]; [0.0];
      [0.2]; [0.0]; [0.0];
      [0.5]; [0.0]; [0.0];
      [0.4]; [0.0]; [0.0];] in
  let (notgsExp, notgsVars) = 
      mk_bind_custom "NotGoodStudent" ("! " ^ (List.hd_exn gsVars)) in
  let _ : unit =  prog :=  notgsExp :: gsExp :: !prog in
  let gsVars = List.rev(notgsVars :: gsVars) in
  let _ : unit =  boundvars := List.append gsVars !boundvars in
  (* Mileage *)
  let (mileageExp, mileageVars) = mk_discrete "Mileage" [0.100000;0.400000;0.400000;0.100000] in
  let _ : unit =  prog := mileageExp :: !prog in
  let _ : unit =  boundvars := List.append mileageVars !boundvars in
  (* CarValue *)
  let (carvalueExp, carvalueVars) = 
    let list_of_vars = 
      cartesian 
        (cartesian modelVars [(List.hd_exn vyearVars); "NotVehicleYear0"])
        mileageVars in
    let list_of_vars = List.map list_of_vars ~f:(fun ((a,b),c) -> a ^ " && " ^ b ^ " && " ^ c) in
    ite_discrete_to_discrete_ite "CarValue" (List.drop_last_exn list_of_vars)
      [[0.000000;0.100000;0.800000;0.090000;0.010000]; 
	    [0.000000;0.100000;0.800000;0.090000;0.010000]; 
      [0.000000;0.100000;0.800000;0.090000;0.010000]; 
      [0.000000;0.100000;0.800000;0.090000;0.010000]; 
      [0.030000;0.300000;0.600000;0.060000;0.010000]; 
      [0.160000;0.500000;0.300000;0.030000;0.010000]; 
      [0.400000;0.470000;0.100000;0.020000;0.010000]; 
      [0.900000;0.060000;0.020000;0.010000;0.010000]; 
      [0.100000;0.800000;0.100000;0.000000;0.000000]; 
      [0.100000;0.800000;0.100000;0.000000;0.000000]; 
      [0.100000;0.800000;0.100000;0.000000;0.000000]; 
      [0.100000;0.800000;0.100000;0.000000;0.000000]; 
      [0.250000;0.700000;0.050000;0.000000;0.000000];  
      [0.700000;0.299900;0.000100;0.000000;0.000000]; 
      [0.990000;0.009999;0.000001;0.000000;0.000000]; 
      [0.999998;0.000001;0.000001;0.000000;0.000000]; 
      [0.000000;0.100000;0.900000;0.000000;0.000000]; 
      [0.000000;0.100000;0.900000;0.000000;0.000000]; 
      [0.000000;0.100000;0.900000;0.000000;0.000000]; 
      [0.000000;0.100000;0.900000;0.000000;0.000000]; 
      [0.200000;0.300000;0.500000;0.000000;0.000000]; 
      [0.500000;0.300000;0.200000;0.000000;0.000000]; 
      [0.700000;0.200000;0.100000;0.000000;0.000000]; 
      [0.990000;0.009999;0.000001;0.000000;0.000000]; 
      [0.000000;0.000000;0.000000;1.000000;0.000000]; 
      [0.000000;0.000000;0.000000;1.000000;0.000000]; 
      [0.000000;0.000000;0.000000;1.000000;0.000000]; 
      [0.000000;0.000000;0.000000;1.000000;0.000000];  
      [0.010000;0.090000;0.200000;0.700000;0.000000]; 
      [0.050000;0.150000;0.300000;0.500000;0.000000]; 
      [0.100000;0.300000;0.300000;0.300000;0.000000]; 
      [0.200000;0.200000;0.300000;0.300000;0.000000]; 
      [0.000000;0.000000;0.000000;0.000000;1.000000]; 
      [0.000000;0.000000;0.000000;0.000000;1.000000]; 
      [0.000000;0.000000;0.000000;0.000000;1.000000]; 
      [0.000000;0.000000;0.000000;0.000000;1.000000]; 
      [0.000001;0.000001;0.000001;0.000001;0.999996]; 
      [0.000001;0.000001;0.000001;0.000001;0.999996];  
      [0.000001;0.000001;0.000001;0.000001;0.999996]; 
      [0.000001;0.000001;0.000001;0.000001;0.999996];] in
  let _ : unit =  prog := carvalueExp :: !prog in
  let _ : unit =  boundvars := List.append carvalueVars !boundvars in
  (* Theft *)
  let (theftExp, theftVars) = 
    let list_of_vars = 
      cartesian (cartesian antiVars homeVars) carvalueVars in
    let list_of_vars = List.map list_of_vars ~f:(fun ((a,b),c) -> a ^ " && " ^ b ^ " && " ^ c) in
    ite_discrete_to_discrete_ite "Theft" (List.drop_last_exn list_of_vars)
    [[0.000001]; 
    [0.000002]; 
    [0.000003]; 
    [0.000002]; 
    [0.000001]; 
    [0.000500]; 
    [0.00200]; 
    [0.005000];  
    [0.005000]; 
    [0.000001]; 
    [0.000010]; 
    [0.000100]; 
    [0.000300];  
    [0.000300]; 
    [0.000001]; 
    [0.000010]; 
    [0.000020]; 
    [0.000050]; 
    [0.000050]; 
    [0.000001];
    [0.000001]; 
    [0.000002]; 
    [0.000003]; 
    [0.000002]; 
    [0.000001]; 
    [0.001000]; 
    [0.005000]; 
    [0.010000]; 
    [0.010000]; 
    [0.000001]; 
    [0.000010]; 
    [0.000200]; 
    [0.000500]; 
    [0.000500]; 
    [0.000001]; 
    [0.000010]; 
    [0.000100]; 
    [0.000200]; 
    [0.000200]; 
    [0.000001];] in 
  let _ : unit =  prog := theftExp :: !prog in
  let _ : unit =  boundvars := List.append theftVars !boundvars in
  let (nottheftExp, nottheftVars) = 
    mk_bind_custom "NotTheft0" ("! " ^ (List.hd_exn theftVars)) in
  let _ : unit =  prog := nottheftExp :: !prog in
  let theftVars = List.rev (nottheftVars :: theftVars) in
  (* Accident *)
  let (accidentExp, accidentVars) = 
    let list_of_vars = 
      cartesian (cartesian antilockVars mileageVars) dqualVars in
    let list_of_vars = List.map list_of_vars ~f:(fun ((a,b),c) -> a ^ " && " ^ b ^ " && " ^ c) in
    ite_discrete_to_discrete_ite "Accident" (List.drop_last_exn list_of_vars)
    [[0.700000;0.200000;0.070000;0.030000]; 
    [0.990000;0.007000;0.002000;0.001000]; 
    [0.999000;0.000700;0.000200;0.000100]; 
    [0.400000;0.300000;0.200000;0.100000]; 
    [0.980000;0.010000;0.005000;0.005000]; 
    [0.995000;0.003000;0.001000;0.001000]; 
    [0.300000;0.300000;0.200000;0.200000]; 
    [0.970000;0.020000;0.007000;0.003000]; 
    [0.990000;0.007000;0.002000;0.001000];
    [0.200000;0.200000;0.300000;0.300000]; 
    [0.950000;0.030000;0.010000;0.010000]; 
    [0.985000;0.010000;0.003000;0.002000];
    [0.600000;0.200000;0.100000;0.100000]; 
    [0.980000;0.010000;0.005000;0.005000]; 
    [0.995000;0.003000;0.001000;0.001000];
    [0.300000;0.200000;0.200000;0.300000]; 
    [0.960000;0.020000;0.015000;0.005000]; 
    [0.990000;0.007000;0.002000;0.001000];
    [0.200000;0.200000;0.200000;0.400000]; 
    [0.950000;0.030000;0.015000;0.005000]; 
    [0.980000;0.010000;0.005000;0.005000];
    [0.100000;0.100000;0.300000;0.500000]; 
    [0.940000;0.030000;0.020000;0.010000]; 
    [0.980000;0.010000;0.007000;0.003000];] in
  let _ : unit =  prog := accidentExp :: !prog in
  let _ : unit =  boundvars := List.append accidentVars !boundvars in
  (* ILiCost *)
  let (ilicostExp, ilicostVars) = 
    ite_discrete_to_discrete_ite "ILiCost" (List.drop_last_exn accidentVars)
    [[1.000000;0.000000;0.000000;0.000000]; 
    [0.999000;0.000998;0.000001;0.000001];
    [0.900000;0.050000;0.030000;0.020000]; 
    [0.800000;0.100000;0.060000;0.040000];] in
  let _ : unit =  prog := ilicostExp :: !prog in
  let _ : unit =  boundvars := List.append ilicostVars !boundvars in
  (* MedCost *)
  let (medcostExp, medcostVars) = 
    let list_of_vars = 
      cartesian (cartesian accidentVars ageVars) cushVars in
    let list_of_vars = List.map list_of_vars ~f:(fun ((a,b),c) -> a ^ " && " ^ b ^ " && " ^ c) in
    ite_discrete_to_discrete_ite "MedCost" (List.drop_last_exn list_of_vars)
    [[1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];
    [0.960000;0.030000;0.009000;0.001000]; 
    [0.980000;0.019000;0.000900;0.000100]; 
    [0.990000;0.009900;0.000090;0.000010]; 
    [0.999000;0.000990;0.000009;0.000001]; 
    [0.960000;0.030000;0.009000;0.001000]; 
    [0.980000;0.019000;0.000900;0.000100]; 
    [0.990000;0.009900;0.000090;0.000010]; 
    [0.999000;0.000990;0.000009;0.000001]; 
    [0.900000;0.070000;0.020000;0.010000]; 
    [0.950000;0.040000;0.007000;0.003000]; 
    [0.970000;0.025000;0.003000;0.002000]; 
    [0.990000;0.007000;0.002000;0.001000]; 
    [0.500000;0.200000;0.200000;0.100000]; 
    [0.800000;0.150000;0.030000;0.020000]; 
    [0.950000;0.020000;0.020000;0.010000]; 
    [0.990000;0.007000;0.002000;0.001000]; 
    [0.500000;0.200000;0.200000;0.100000]; 
    [0.800000;0.150000;0.030000;0.020000]; 
    [0.950000;0.020000;0.020000;0.010000]; 
    [0.990000;0.007000;0.002000;0.001000];  
    [0.300000;0.300000;0.200000;0.200000]; 
    [0.500000;0.200000;0.200000;0.100000]; 
    [0.900000;0.070000;0.020000;0.010000]; 
    [0.950000;0.030000;0.010000;0.010000];
    [0.300000;0.300000;0.200000;0.200000]; 
    [0.500000;0.200000;0.200000;0.100000];  
    [0.900000;0.070000;0.020000;0.010000]; 
    [0.950000;0.030000;0.010000;0.010000]; 
    [0.300000;0.300000;0.200000;0.200000]; 
    [0.500000;0.200000;0.200000;0.100000]; 
    [0.900000;0.070000;0.020000;0.010000]; 
    [0.950000;0.030000;0.010000;0.010000]; 
    [0.200000;0.200000;0.300000;0.300000]; 
    [0.300000;0.300000;0.200000;0.200000]; 
    [0.600000;0.300000;0.070000;0.030000]; 
    [0.900000;0.050000;0.030000;0.020000]] in
  let _ : unit =  prog := medcostExp :: !prog in
  let _ : unit =  boundvars := List.append medcostVars !boundvars in
  (* OtherCarCost *)
  let (othercarcostExp, othercarcostVars) = 
    let list_of_vars = 
      cartesian accidentVars rautoVars in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "OtherCarCost" (List.drop_last_exn list_of_vars)
    [[1.000000;0.000000;0.000000;0.000000]; 
	 [1.000000;0.000000;0.000000;0.000000]; 
	 [1.000000;0.000000;0.000000;0.000000];
	 [0.990000;0.005000;0.004990;0.000010]; 
	 [0.979966;0.010000;0.009985;0.000050]; 
	 [0.950000;0.030000;0.019980;0.000020];
	 [0.600000;0.200000;0.199980;0.000020]; 
	 [0.500000;0.200000;0.299970;0.000030]; 
	 [0.400000;0.300000;0.299960;0.000040];
	 [0.200000;0.400000;0.399960;0.000040]; 
	 [0.100000;0.500000;0.399940;0.000060]; 
	 [0.005000;0.550000;0.444900;0.000100]] in
  let _ : unit =  prog := othercarcostExp :: !prog in 
  let _ : unit =  boundvars := List.append othercarcostVars !boundvars in
  (* ThisCarDamaged *)
  let (thiscardamExp, thiscardamVars) = 
    let list_of_vars = 
      cartesian accidentVars rautoVars in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "ThisCarDam" (List.drop_last_exn list_of_vars)
    [[1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];
    [0.001000;0.900000;0.098000;0.001000]; 
    [0.200000;0.750000;0.049999;0.000001]; 
    [0.700000;0.290000;0.009999;0.000001];
    [0.000001;0.000999;0.700000;0.299000]; 
    [0.001000;0.099000;0.800000;0.100000]; 
    [0.050000;0.600000;0.300000;0.050000];
    [0.000001;0.000009;0.000090;0.999900]; 
    [0.000001;0.000999;0.009000;0.990000]; 
    [0.050000;0.200000;0.200000;0.550000]] in
  let _ : unit =  prog := thiscardamExp :: !prog in
  let _ : unit =  boundvars := List.append thiscardamVars !boundvars in 
  (* ThisCarCost *)
  let (thiscarcostExp, thiscarcostVars) = 
    let list_of_vars = 
      cartesian (cartesian thiscardamVars carvalueVars) theftVars in
    let list_of_vars = List.map list_of_vars ~f:(fun ((a,b),c) -> a ^ " && " ^ b ^ " && " ^ c) in
    ite_discrete_to_discrete_ite "ThisCarCost" (List.drop_last_exn list_of_vars)
    [[0.200000;0.800000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];

    [0.050000;0.950000;0.000000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];

    [0.040000;0.010000;0.950000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];

    [0.040000;0.010000;0.950000;0.000000]; 
    [1.000000;0.000000;0.000000;0.000000];

    [0.040000;0.010000;0.200000;0.750000]; 
    [1.000000;0.000000;0.000000;0.000000];

    [0.150000;0.850000;0.000000;0.000000]; 
    [0.950000;0.050000;0.000000;0.000000];

    [0.030000;0.970000;0.000000;0.000000]; 
    [0.950000;0.050000;0.000000;0.000000];

    [0.030000;0.020000;0.950000;0.000000]; 
    [0.990000;0.010000;0.000000;0.000000];

    [0.030000;0.020000;0.950000;0.000000]; 
    [0.990000;0.010000;0.000000;0.000000];

    [0.020000;0.030000;0.250000;0.700000]; 
    [0.980000;0.010000;0.010000;0.000000];

    [0.050000;0.950000;0.000000;0.000000]; 
    [0.250000;0.750000;0.000000;0.000000];

    [0.010000;0.990000;0.000000;0.000000]; 
    [0.150000;0.850000;0.000000;0.000000];

    [0.001000;0.001000;0.998000;0.000000]; 
    [0.010000;0.010000;0.980000;0.000000];

    [0.001000;0.001000;0.998000;0.000000]; 
    [0.005000;0.005000;0.990000;0.000000];

    [0.001000;0.001000;0.018000;0.980000]; 
    [0.003000;0.003000;0.044000;0.950000];

    [0.030000;0.970000;0.000000;0.000000]; 
    [0.050000;0.950000;0.000000;0.000000];

    [0.000001;0.999999;0.000000;0.000000]; 
    [0.010000;0.990000;0.000000;0.000000];

    [0.000001;0.000001;0.999998;0.000000]; 
    [0.005000;0.005000;0.990000;0.000000];

    [0.000001;0.000001;0.999998;0.000000]; 
    [0.001000;0.001000;0.998000;0.000000];

    [0.000001;0.000001;0.009998;0.990000]; 
    [0.000001;0.000001;0.029998;0.970000];] in
  let _ : unit =  prog := thiscarcostExp :: !prog in 
  let _ : unit =  boundvars := List.append thiscarcostVars !boundvars in 
  (* PropCost *)
  let (propcostExp, propcostVars) = 
    let list_of_vars = 
      cartesian othercarcostVars thiscarcostVars in
    let list_of_vars = List.map list_of_vars ~f:(fun (a,b) -> a ^ " && " ^ b) in
    ite_discrete_to_discrete_ite "PropCost" (List.drop_last_exn list_of_vars)
    [[0.700000;0.300000;0.000000;0.000000]; 
    [0.000000;0.950000;0.050000;0.000000]; 
    [0.000000;0.000000;0.980000;0.020000]; 
    [0.000000;0.000000;0.000000;1.000000]; 
    [0.000000;0.950000;0.050000;0.000000]; 
    [0.000000;0.600000;0.400000;0.000000]; 
    [0.000000;0.000000;0.950000;0.050000]; 
    [0.000000;0.000000;0.000000;1.000000]; 
    [0.000000;0.000000;0.980000;0.020000]; 
    [0.000000;0.000000;0.800000;0.200000]; 
    [0.000000;0.000000;0.600000;0.400000]; 
    [0.000000;0.000000;0.000000;1.000000];  
    [0.000000;0.000000;0.000000;1.000000]; 
    [0.000000;0.000000;0.000000;1.000000]; 
    [0.000000;0.000000;0.000000;1.000000]; 
    [0.000000;0.000000;0.000000;1.000000];] in
  let _ : unit =  prog := propcostExp :: !prog in
  let _ : unit =  boundvars := List.append propcostVars !boundvars in  
  let final_prog = String.concat ~sep:"\n" (List.rev !prog) in
  (final_prog, !boundvars)

(* Benchmark 4: Sachs
  https://www.bnlearn.com/bnrepository/discrete-small.html#sachs
*)

let rec mk_sachs_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many Sachs files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/sachs_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_insurance (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/sachs_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_insurance (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done
and mk_sachs (m : methodology) =
  let (program, bv) = mk_sachs_vars () in
  match m with
  | Select -> 
    let s = method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = method_2 bv in 
    String.concat ~sep:"\n" [program; s]
and mk_sachs_vars () : string * varname list = 
  let prog = ref []  in
  let boundvars = ref [] in
  (* vars here *)
  let final_prog = String.concat ~sep:"\n" (List.rev !prog) in
  (final_prog, !boundvars)