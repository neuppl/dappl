(* This file defines generators of dappl programs for benchmarks. *)

open Dappl
open Core
open Mk_expr

(* Essentially the main function but for strings. *)
let kc_program (s : string) = 
  let parsed = Util.parse_program s in
  let internal = Core_grammar.from_external_program parsed in
  let t = Core_unix.gettimeofday() in
  let (_, b) = Bc.infer internal in 
  let t' = Core_unix.gettimeofday() in
  let _ = Printf.printf "MEU is: %F\n" b in
  let _ = Printf.printf  "Time elapsed: %F\n" (t' -. t) in 
  ()

(* 
  Benchmark 1: Finite-horizon MDP. We describe MDPs of this form:
  F -> F -> ... -> F -> R
  |    |           |
  v    v           v
  D    D           D
  |\   |\          |\
  R R  R R         R R
  where the flips are F's, decisions are D's, and R's are rewards.
  We generate these randomly using the function gen_mdp (cols : int).
*)

let mk_column (e : string) =
  let (sf, f) = mk_flip() in
  let i = (Random.int 4) + 2 in
  let (sd, d, l) = mk_dec i in
  let rews = List.init i ~f:(fun _ -> mk_reward ()) in
  let dec = mk_choosewith d l rews in
  let ite = mk_ite f [dec;e] in
  String.concat ~sep:"\n" [sf; sd; ite]

let _mk_column_print (e : string) = 
  Printf.printf "%s\n" (mk_column e)

let gen_mdp (cols : int) = 
  let _ = Random.init 234 in
  let l = List.init cols ~f:(fun i -> i) in
  let rw = mk_reward () in
  let fold_fn = fun _ -> fun b -> mk_column b in
  List.fold_right l ~f:fold_fn ~init:rw

let to_file_mdp (cols : int) = 
  let program = gen_mdp cols in 
  let filename = "experiments/mdp/mdp" ^(Int.to_string cols) ^ ".dappl" in
  let oc = Out_channel.create filename in 
  Printf.fprintf oc "%s\n" program; Out_channel.close oc