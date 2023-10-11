(* This file defines generators of dappl programs for benchmarks. *)

open Dappl
open Core
open Mk_expr_dt

(* Essentially the main function but for strings. *)
let kc_program (s : string) = 
  let parsed = Util.parse_program s in
  let internal = Core_grammar.from_external_program parsed in
  let t = Core_unix.gettimeofday() in
  let (_, b) = Bc.infer internal in 
  let t' = Core_unix.gettimeofday() in
  let _ : unit = Printf.printf "MEU is: %F\n" b in
  let _ : unit = Printf.printf  "Time elapsed: %F\n" (t' -. t) in 
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

(* This generates the dappl code. *)

let mk_column (e : string) =
  let (sf, f) = Mk_expr.mk_flip() in
  let i = (Random.int 4) + 2 in
  let (sd, d, l) = Mk_expr.mk_dec i in
  let rews = List.init i ~f:(fun _ -> Mk_expr.mk_reward ()) in
  let dec = Mk_expr.mk_choosewith d l rews in
  let ite = Mk_expr.mk_ite f [dec;e] in
  String.concat ~sep:"\n" [sf; sd; ite]

let _mk_column_print (e : string) = 
  Printf.printf "%s\n" (mk_column e)

let gen_mdp (cols : int) = 
  let _ : unit = Random.init 234 in
  let l = List.init cols ~f:(fun i -> i) in
  let rw = Mk_expr.mk_reward () in
  let fold_fn = fun _ -> fun b -> mk_column b in
  List.fold_right l ~f:fold_fn ~init:rw

(* This generates the Problog code. *)

let mk_column_dt (e : problog_program) =
  let (_, f) = Mk_expr_dt.mk_flip() in
  let i = (Random.int 4) + 2 in
  let (_, p) = Mk_expr_dt.mk_dec i in
  let rews = List.init i ~f:(fun _ -> Mk_expr_dt.mk_reward ()) in
  let rews = List.map rews ~f:(fun (_,b) -> b) in
  let dec = Mk_expr_dt.mk_choosewith p rews in
  Mk_expr_dt.mk_ite f [dec;e]

let gen_mdp_dt (cols : int) = 
  let _ : unit = Random.init 234 in
  let l = List.init cols ~f:(fun i -> i) in
  let (_, c) = Mk_expr_dt.mk_reward () in
  let fold_fn = fun _ -> fun b -> mk_column_dt b in
  List.fold_right l ~f:fold_fn ~init:c

let to_file_mdp (cols : int) = 
  let program = gen_mdp cols in 
  let filename = "experiments/mdp/mdp" ^(Int.to_string cols) ^ ".dappl" in
  let oc = Out_channel.create filename in 
  Printf.fprintf oc "%s\n" program; Out_channel.close oc;
  Printf.printf "Generated MDP benchmark with %n columns at %s, run\ndappl run %s to see MEU\n" cols filename filename;
  let dt_program = Mk_expr_dt.print_program (gen_mdp_dt cols) in
  let filename = "experiments/mdp/mdp" ^(Int.to_string cols) ^ ".pl" in
  let oc = Out_channel.create filename in 
  Printf.fprintf oc "%s\n" dt_program; Out_channel.close oc;
  Printf.printf "Generated DTProblog benchmark with %n columns at %s, run\ndappl run %s to see MEU\n" cols filename filename;


(* 
  Benchmark 2: Network reliability. We consider a network of type
    O - O - O ... O
  S   X   X   ...   E
    O - O - O ... O
  where each O is a router. 
  We observe a packet failed to go from S to E. 
  We have n tries to diagnose which of the routers O was faulty. We cannot investigate the same router twice. 
  This is done via gen_network(m,n) where:
  m is the number of ROUTER COLUMNS, so there are 2m+2 routers in total;
  n is the number of tries. It must be the case that n <= 2m.
*)