open Dappl
open OUnit2
open Mk_exprs

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

(* Utility to write to file for debug. *)
(* let write_dappl_program (filename : string) (program : string) =
  let s = String.cat filename ".dappl" in 
  Core.Out_channel.write_all s ~data:program *)

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
  let rews = List.init i (fun _ -> mk_reward ()) in
  let dec = mk_choosewith d l rews in
  let ite = mk_ite f [dec;e] in
  String.concat "\n" [sf; sd; ite]

let _mk_column_print (e : string) = 
  Printf.printf "%s\n" (mk_column e)

let gen_mdp (cols : int) = 
  let _ = Random.init 42069 in
  let l = List.init cols (fun i -> i) in
  let rw = mk_reward () in
  let fold_fn = fun _ -> fun b -> mk_column b in
  List.fold_right fold_fn l rw

let _gen_mdp_print_test = 
  Printf.printf "%s\n" (gen_mdp 3)

let test_fn (_ : test_ctxt) = 
  kc_program (gen_mdp 500)

let tests = "testing" >::: [
  "progtest" >:: test_fn;
]

let _ = run_test_tt_main tests