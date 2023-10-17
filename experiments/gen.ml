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