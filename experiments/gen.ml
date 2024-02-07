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
  let letbinds = zip_with_fn varnames bindings (fun (v, b) -> mk_bind_custom v b) in
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
    let _ = Printf.printf "Doing the %s \n" id in
    (* First transpose the probabilities. *)
    let wl_transpose = transpose_lists wl in
    let _ = Printf.printf "%i\n" (List.length wl_transpose) in 
    let last = List.map wl_transpose ~f:(fun x -> List.hd_exn (List.rev x)) in
    let _ = Printf.printf "%i\n" (List.length last) in
    let rest = List.map wl_transpose ~f:(fun x ->List.rev (List.tl_exn (List.rev x))) in
    let _ = Printf.printf "%i\n" (List.length rest) in
    let last_str = List.map last ~f:(fun x -> "flip " ^ Float.to_string x) in
    let rest_str = List.map rest ~f:(fun l -> List.map l ~f:(fun x -> "flip " ^ Float.to_string x)) in  
    let varnames = List.init (List.length wl_transpose) ~f:(fun i -> id ^ Int.to_string i) in 
    let rest_str = List.zip_exn varnames (List.map rest_str ~f:(fun x -> List.zip_exn vl x)) in
    let final = zip_with_fn rest_str last_str (fun ((id, l),c) -> mk_nested_ite id l c) in
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
  let _ = prog := ageExp :: !prog in
  (* SocioEcon *)
  let (socioEconExp, socioEconVars) = 
    ite_discrete_to_discrete_ite "SocioEcon" (List.drop_last_exn ageVars)
      [[0.4; 0.4; 0.19;0.01]; [0.4; 0.4; 0.19;0.01];[0.5; 0.2; 0.29;0.01]] in
  let _ = prog :=  socioEconExp :: !prog in
  (* OtherCar *)
  let (otherCarExp, _otherCarVars) = 
    ite_discrete_to_discrete_ite "OtherCar" (List.drop_last_exn socioEconVars)
      [[0.5; 0.5] ; [0.8 ; 0.2] ; [0.9 ; 0.1] ; [0.95 ; 0.05]] in
  let _ = prog :=  otherCarExp :: !prog in
  (* RiskAversion *)
  let (riskExp, _riskVars) = 
    let list_of_vars = cartesian ageVars socioEconVars in
    let _ = Printf.printf "%i" (List.length list_of_vars) in
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
  let _ = prog :=  riskExp :: !prog in
  (* RiskAversion *)
  let (riskExp, _riskVars) = 
    let list_of_vars = cartesian ageVars socioEconVars in
    let _ = Printf.printf "%i" (List.length list_of_vars) in
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
  let _ = prog :=  riskExp :: !prog in
  let final_prog = String.concat ~sep:"\n" (List.rev !prog) in
  (final_prog, !boundvars)