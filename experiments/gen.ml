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
open Dappl.Core_grammar
open Pp

(* Turns a list of bindings into a single program *)
let bind_fold (l : (expr -> expr) list) : expr -> expr = fun e ->
  List.fold l ~init:e ~f:(fun x f -> f x)

(*
  Benchmark 1: Earthquake
  https://www.bnlearn.com/bnrepository/discrete-small.html#earthquake
*)
let mk_earthquake_vars () : (expr -> expr) * (string list) =
  let binds = ref [] in
  let vars  = ref [] in
  (* Creates earthquake variable *)
  let f_eq  = mk_bind_dec "earthquake" ["eq_dec"] in
  binds := f_eq :: !binds; vars := "earthquake" :: !vars;
  (* Creates burglary variable *)
  let f_bg  = mk_bind_dec "burglary" ["bg_dec"] in
  binds := f_bg :: !binds; vars := "burglary" :: !vars;
  (* Creates alarm variable *)
  let f_alm = let ite1 = mk_ite "earthquake" (mk_flip 0.95) (mk_flip 0.94) in
              let ite2 = mk_ite "earthquake" (mk_flip 0.29) (mk_flip 0.001) in
              let ite3 = mk_ite "burglary" ite1 ite2 in
              mk_bind "alarm" ite3 in
  binds := f_alm :: !binds; vars := "alarm" :: !vars;
  (* Creates maryCalls variable *)
  let f_mry = mk_bind "maryCalls" (mk_ite "alarm" (mk_flip 0.7) (mk_flip 0.01)) in
  binds := f_mry :: !binds; vars := "maryCalls" :: !vars;
  (* Creates johnCalls variable *)
  let f_jhn = mk_bind "johnCalls" (mk_ite "alarm" (mk_flip 0.7) (mk_flip 0.01)) in
  binds := f_jhn :: !binds; vars := "johnCalls" :: !vars;
  (* Create output *)
  let prog  = bind_fold !binds in
  (prog, List.rev !vars)

let mk_earthquake (m :methodology) =
  let (prog, bv) = mk_earthquake_vars () in
  match m with
  | Select  -> prog (method_1 bv)
  | New     ->  prog (method_2 bv)

(* Create 2j many randomly generate earthquake files, j many for each methodology*)
let mk_earthquake_to_file (j  : int) : unit =
  let _ : unit = Format.printf "Generating %i many earthquake files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method_1" ^".dappl" in
    let oc = Out_channel.create filename in
    let earthquake = mk_earthquake (Select) in
    to_channel oc earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method_2" ^".dappl" in
    let oc = Out_channel.create filename in
    let earthquake = mk_earthquake (New) in
    to_channel oc earthquake; Out_channel.close oc;
  done


(*
  Benchmark 2 : Asia
  https://www.bnlearn.com/bnrepository/discrete-small.html#asia
*)

let mk_asia_vars () : (expr -> expr) * (string list) =
  let binds = ref [] in
  let vars  = ref [] in
  (* Creates asia variable *)
  let f_asia  = mk_bind_dec "asia" ["asia_dec"] in
  binds := f_asia :: !binds; vars := "asia" :: !vars;
  (* Creates smoke variable *)
  let f_smk   = mk_bind_dec "smoke" ["smk_dec"] in
  binds := f_smk :: !binds; vars := "smoke" :: !vars;
  (* Creates lung variable *)
  let f_lung  = mk_bind "lung"
                  (mk_ite "smoke" (mk_flip 0.1) (mk_flip 0.01)) in
  binds := f_lung :: !binds; vars := "lung" :: !vars;
  (* Creates tub variable *)
  let f_tub   = mk_bind "tub"
                  (mk_ite "asia" (mk_flip 0.05) (mk_flip 0.01)) in
  binds := f_tub :: !binds; vars := "tub" :: !vars;
  (* Creates bronc variable *)
  let f_brc   = mk_bind "bronc"
                  (mk_ite "smoke" (mk_flip 0.6) (mk_flip 0.3)) in
  binds := f_brc :: !binds; vars := "bronc" :: !vars;
  (* Creates either variable *)
  let f_eit   = bind_rand_new_dec
                  "either"
                  (Or((Ident "lung"), (Ident "tub")))
                  0.5
                in
  binds := f_eit :: !binds; vars := "either" :: !vars;
  (* Creates xray variable *)
  let f_xray  = bind_rand_new_dec
                  "xray"
                  (mk_ite "either" (mk_flip 0.98) (mk_flip 0.98))
                  0.98
                in
  binds := f_xray :: !binds; vars := "xray" :: !vars;
  (* Creates dysp variable *)
  let f_dysp  = bind_rand_new_dec
                  "dysp"
                  (mk_ite "bronc"
                    (mk_ite "either" (Flip 0.9) (Flip 0.8))
                    (mk_ite "either" (Flip 0.7) (Flip 0.1)))
                  0.9
                in
  binds := f_dysp :: !binds; vars := "dysp" :: !vars;
  (* Create output *)
  let prog  = bind_fold !binds in
  (prog, List.rev !vars)

let mk_asia (m :methodology) =
  let (prog, bv) = mk_asia_vars () in
  match m with
  | Select  -> prog (method_1 bv)
  | New     ->  prog (method_2 bv)

(* Create 2j many randomly generate asia files, j many for each methodology*)
let mk_asia_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many asia files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/asia_" ^(Int.to_string i) ^ "_method_1" ^".dappl" in
    let oc = Out_channel.create filename in
    let asia = mk_asia (Select) in
    to_channel oc asia; Out_channel.close oc;
    let filename = "experiments/bn/processed/asia_" ^(Int.to_string i) ^ "_method_2" ^".dappl" in
    let oc = Out_channel.create filename in
    let asia = mk_asia (New) in
    to_channel oc asia; Out_channel.close oc;
  done

(*
  Benchmark 3: Survey
  https://www.bnlearn.com/bnrepository/discrete-small.html#survey
*)

let mk_survey_vars () : (expr -> expr) * (string list) =
  let binds = ref [] in
  let vars  = ref [] in
  (* Create age variable *)
  let f_age   = mk_bind "age" (mk_disc_or_dec [("A" , 0.5) ; ("Y" , 0.3) ; ("O", 0.2)]) in
  binds := f_age :: !binds; vars := "age" :: !vars;
  (* Create sex variable *)
  let f_sex   = mk_bind "sex" (mk_disc_or_dec [("M" , 0.6) ; ("F" , 0.4)]) in
  binds := f_sex :: !binds; vars := "sex" :: !vars;
  (* Create high and uni variable *)
  let f_high  = mk_bind
                  "high"
                  (mk_choosewith
                    "age"
                    ["A" ; "Y" ; "O"]
                    [
                      mk_choosewith "sex" ["M" ; "F"] [Flip 0.72 ; Flip 0.7] ;
                      mk_choosewith "sex" ["M" ; "F"] [Flip 0.75 ; Flip 0.64] ;
                      mk_choosewith "sex" ["M" ; "F"] [Flip 0.88 ; Flip 0.9]
                    ]) in
  binds := f_high :: !binds; vars := "high" :: !vars;
  let f_uni = mk_bind "uni" (Not(Ident "high")) in
  binds := f_uni :: !binds; vars := "uni" :: !vars;
  (* Creates emp, self variables *)
  let f_emp   = bind_rand_new_dec "emp" (mk_ite "high" (Flip 0.96) (Flip 0.92)) 0.5 in
  let f_self  = bind_rand_new_dec "self" (Not(Ident "emp")) 0.5 in
  binds := f_self :: f_emp :: !binds; vars := "self" :: "emp" :: !vars;
  (* Creates small, big variables *)
  let f_sml   = bind_rand_new_dec "small" (mk_ite "high" (Flip 0.25) (Flip 0.2)) 0.5 in
  let f_big   = bind_rand_new_dec "big" (Not(Ident "small")) 0.5 in
  binds := f_big :: f_sml :: !binds; vars := "big" :: "small" :: !vars;
  (* Creates intermediate variables for car, train, other *)
  let f_tt    = mk_bind "TT" (And(Ident "emp", Ident "small")) in
  let f_tf    = mk_bind "TF" (And(Ident "emp", Ident "big")) in
  let f_ft    = mk_bind "FT" (And(Ident "self", Ident "small")) in
  let f_ff    = mk_bind "FF" (And(Ident "self", Ident "big")) in
  binds := f_ff :: f_ft :: f_tf :: f_tt :: !binds;
  (* Create car *)
  let f_car   = bind_rand_new_dec "car"
                (mk_ite "TT" (Flip 0.48)
                  (mk_ite "TF" (Flip 0.58)
                    (mk_ite "FT" (Flip 0.56)
                      (mk_ite "FF" (Flip 0.7) (Return False))))) 0.5 in
  binds := f_car :: !binds; vars := "car" :: !vars;
  (* Create train *)
  let f_tra   = bind_rand_new_dec "train"
                (mk_ite "TT" (Flip 0.42)
                  (mk_ite "TF" (Flip 0.36)
                    (mk_ite "FT" (Flip 0.24)
                      (mk_ite "FF" (Flip 0.21) (Return False))))) 0.5 in
  binds := f_tra :: !binds; vars := "train" :: !vars;
  (* Create other *)
  let f_oth   = bind_rand_new_dec "other"
                (mk_ite "TT" (Flip 0.10)
                  (mk_ite "TF" (Flip 0.08)
                    (mk_ite "FT" (Flip 0.18)
                      (mk_ite "FF" (Flip 0.09) (Return False))))) 0.5 in
  binds := f_oth :: !binds; vars := "train" :: !vars;
  (* Create output *)
  Format.printf "LENGTH %i\n" (List.length !binds);
  let prog  = bind_fold !binds in
  (prog, List.rev !vars)

let rec mk_survey (m :methodology) =
  let (prog, bv) = mk_survey_vars () in
  match m with
  | Select  -> postprocess (prog (method_1 bv))
  | New     ->  postprocess (prog (method_2 bv))
and postprocess : expr -> expr = fun e -> match e with
| Bind(s, e, e')  -> Bind(s, e, postprocess e')
| _               -> And(e, And(
                              Or(Ident "train", Or(Ident "car", Ident "other")),
                              Not(And(Ident "train", And(Ident "car", Ident "other")))))

(* Create 2j many randomly generate survey files, j many for each methodology*)
let mk_survey_to_file (j  : int) : unit =
  let _ : unit = Printf.printf "Generating %i many survey files\n" j in
  for i = 0 to j do
    let filename = "experiments/bn/processed/survey_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in
    let survey = mk_survey (Select) in
    to_channel oc survey; Out_channel.close oc;
    let filename = "experiments/bn/processed/survey_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in
    let survey = mk_survey (New) in
    to_channel oc survey; Out_channel.close oc;
  done
