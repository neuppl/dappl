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

(* Benchmark 2: Asia 
  https://www.bnlearn.com/bnrepository/discrete-small.html#asia
*)
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