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
  let (fl, f) = Mk_expr_dt.mk_flip() in
  let i = (Random.int 4) + 2 in
  let (_, p) = Mk_expr_dt.mk_dec i in
  let rews = List.init i ~f:(fun _ -> Mk_expr_dt.mk_reward ()) in
  let rews = List.map rews ~f:(fun (_,b) -> b) in
  let dec = Mk_expr_dt.mk_choosewith p rews in
  f :: Mk_expr_dt.mk_ite fl [dec;e]

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
  Printf.printf "Generated DTProblog benchmark with %n columns at %s, run\ndappl run %s to see MEU\n" cols filename filename


(* 
  Benchmark 2: Network reliability. We consider a ladder network of type
  T - O - O - O ... O 
       X   X   ...    E.
  F - O - O - O ... O
  where each O is a router, T, F are Booleans.
  We observe a packet failed to go from T,F to E. 
  We have n tries to diagnose which of the routers O was faulty. We cannot investigate the same router twice. 
  This is done via gen_network(m,n) where:
  m is the number of ROUTER COLUMNS, so there are 2m+2 routers in total;
  n is the number of tries. It must be the case that n <= 2m.
*)

let rec extract (l : 'a option list) : 'a list =
  match l with
  | [] -> []
  | x :: xs -> match x with | None -> extract xs | Some v -> v :: extract xs

let rec remove (l : 'a list) (elt : 'a) (eq: 'a -> 'a -> bool): 'a list =
  match l with
  | [] -> []
  | x :: xs -> if eq x elt then remove xs elt eq else x :: remove xs elt eq

(* This function, given two varnames, creates a new ladder column. *)
let mk_column_network (o1 : varname) (o2 : varname) = 
  let (f, fv) = Mk_expr.mk_flip_det 0.5 in
  let ite1 = Mk_expr.mk_ite o2 [fv; "false"] in
  let ite2 = Mk_expr.mk_ite "flip 0.001" ["false" ; fv] in
  let (ite3, v1) = Mk_expr.mk_bind (Mk_expr.mk_ite o1 [ite2; ite1]) in
  let ite1' = Mk_expr.mk_ite o2 ["!" ^ fv; "false"] in
  let ite2' = Mk_expr.mk_ite "flip 0.001" ["false" ; "!" ^ fv] in
  let (ite3', v2) = Mk_expr.mk_bind (Mk_expr.mk_ite o1 [ite2'; ite1']) in
  let final_string = String.concat ~sep:"\n" [f ; ite3 ; ite3'] in
  (final_string, v1, v2)
(* This function creates the ladder. *)
let mk_ladder_h (n : int) =
  if n = 0 then failwith "invalid number of columns; make sure it's >=1.";
  let list_of_vars : varname list ref = ref [] in
  let (init1, v1) = Mk_expr.mk_bind "true" in
  let (init2, v2) = Mk_expr.mk_bind "false" in
  let fold_fn = fun (s, v, v') _ -> 
                  let (fs, w, w') = mk_column_network v v' in
                  let _ : unit = list_of_vars := List.append !list_of_vars [w; w'] in
                  (String.concat ~sep:"\n" [s; fs], w, w') in
  let l = List.init n ~f:(fun _ -> ()) in
  let init = (String.concat ~sep:"\n" [init1; init2], v1, v2) in
  let (program, v1, v2) = List.fold l ~init:init ~f:fold_fn in
  let nodes = !list_of_vars in
  (program, v1, v2, nodes) 

(* This function creates depth many nested decisions. 
   depth : specifies the decision nesting depth 
   nodes : the 2n nodes of the graph 
   cache : a list of nodes we've seen. the corresponding decisions allocated will be false.
*)
let rec mk_depth_h (depth : int) (nodes : varname list) (cache: varname list): string list =
  if depth < 1 then failwith "unsupported depth; is it >=1?" ;
  let node_fn = fun a x -> Mk_expr.mk_ite ("!" ^ x) [Mk_expr.mk_reward () ; a] in
  match depth with
  (* If depth is 1 then just do `if var then reward x else reward y` *)
  | 1 ->  let fn = 
            fun x -> match (List.find cache ~f:(fun y -> String.equal x y)) with
            | Some(_) -> None
            | _ -> Some(node_fn (Mk_expr.mk_reward()) x) in
          extract (List.map nodes ~f:fn)
  (* If depth is not 1 then recurse *)
  | _ ->  let fn = 
            fun x ->  match (List.find cache ~f:(fun y -> String.equal x y)) with
                      | Some(_) ->  None
                      | None    ->  let nodes' = remove nodes x String.equal in
                                    let len = List.length nodes' in
                                    let l = mk_depth_h (depth-1) nodes' (x :: cache) in
                                    let (dec, decvar, choices) = Mk_expr.mk_dec len in
                                    let e = String.concat ~sep:"\n" 
                                            [dec; Mk_expr.mk_choosewith decvar choices l] in
                                    Some (node_fn e x) in
          extract (List.map nodes ~f:fn)

(* This function creates the actual decision problem. *)
let mk_ladder (cols : int) (depth : int) = 
  if cols < 2 then failwith "Make sure cols >= 2!";
  if depth > cols then failwith "Make sure depth <= cols!";
  let (program, v1, v2, nodes) = mk_ladder_h cols in
  let obs = Mk_expr.mk_observe ("!" ^ v1 ^ " && " ^ "!" ^ v2) in
  let (dec, decvar, choices) = Mk_expr.mk_dec (List.length nodes) in
  let map = mk_depth_h depth nodes [] in
  let rws = Mk_expr.mk_choosewith decvar choices map in
  String.concat ~sep:"\n" [program ; obs ; dec ; rws]

(* Now for DTProblog stuff. *)
let mk_column_network_dt (o1 : literal) (o2 : literal) = 
  let (fl, fv) = mk_flip_det 0.5 in
  let (l, v) = mk_flip_det 0.0001 in
  let (l', v') = mk_flip_det 0.0001 in
  let ite1 = mk_rule_with_newvar [o1; flip_lit l; fl] in
  let ite1_lit = extract_literal ite1 in
  let ite1' = mk_rule ite1_lit [o2; flip_lit o1; fl] in
  let ite2 = mk_rule_with_newvar [o1; flip_lit l'; flip_lit fl] in
  let ite2_lit = extract_literal ite2 in
  let ite2' = mk_rule ite2_lit [o2; flip_lit o1; flip_lit fl] in
  ([fv ; v ; v' ; ite1 ; ite1' ; ite2 ; ite2'] , ite1_lit, ite2_lit)
let mk_ladder_dt_h (cols : int) =
  let list_of_vars : literal list ref = ref [] in
  let (true_lit, true_cl) = mk_flip_det 1. in
  let (false_lit, false_cl) = mk_flip_det 0. in
  let fold_fn = fun (s, v, v') _ -> 
                  let (fs, w, w') = mk_column_network_dt v v' in
                  let _ : unit = list_of_vars := List.append !list_of_vars [w; w'] in
                  (s @ fs, w, w') in
  let l = List.init cols ~f:(fun _ -> ()) in
  let (program, v1, v2) = List.fold l ~init:([], true_lit, false_lit) ~f:fold_fn in
  let decision_vars = !list_of_vars in
  (true_cl :: false_cl :: program, v1, v2, decision_vars) 

(* This function creates depth many nested decisions. 
   depth : specifies the decision nesting depth 
   nodes : the 2n nodes of the graph 
   cache : a list of nodes we've seen. the corresponding decisions allocated will be false.
*)
let rec mk_depth_h_dt (depth : int) (nodes : literal list) (cache: literal list): problog_program list =
  if depth < 1 then failwith "unsupported depth; is it >=1?" ;
  let node_fn = fun a x -> 
                  let x = flip_lit x in
                  let (_, p) = mk_reward () in
                  mk_ite x [p ; a] in
  match depth with
  (* If depth is 1 then just do `if var then reward x else reward y` *)
  | 1 ->  let fn = 
            fun x -> match (List.find cache ~f:(fun y -> lit_same_name x y)) with
            | Some(_) -> None
            | _ ->  let (_, p) = mk_reward () in
                    Some (node_fn p x) in
          extract (List.map nodes ~f:fn)
  (* If depth is not 1 then recurse *)
  | _ ->  
          let fn = 
            fun x ->  match (List.find cache ~f:(fun y -> lit_same_name x y)) with
                      | Some(_) ->  None
                      | None    ->  let nodes = remove nodes x lit_same_name in
                                    let len = List.length nodes in
                                    let decs = mk_depth_h_dt (depth-1) nodes (x :: cache) in
                                    let (_,p) = mk_dec len in
                                    let e = mk_choosewith p decs in
                                    Some(node_fn e x) in
          extract (List.map nodes ~f:fn)

(* This function creates the actual decision problem. *)
let mk_ladder_dt (cols : int) (depth : int) = 
  if cols < 2 then failwith "Make sure cols >= 2!";
  if depth > cols then failwith "Make sure depth <= cols!";
  let (program, v1, v2, decision_vars) = mk_ladder_dt_h cols in
  let rule = mk_rule_with_newvar [v1]  in
  let rule_lit = extract_literal rule in
  let rule' = mk_rule rule_lit [v2] in
  let obs = mk_observe rule_lit false in
  let (_, pr) = mk_dec (List.length decision_vars) in
  let map = mk_depth_h_dt depth decision_vars [] in
  let rws = mk_choosewith pr map in
  program @ [rule ; rule'] @ obs @ rws


let to_file_ladder (cols : int) (depth : int)= 
  let col_str, depth_str = Int.to_string cols, Int.to_string depth in
  let program = mk_ladder cols depth in 
  let filename = "experiments/ladder/ladder" ^ col_str ^ "_" ^ depth_str ^ ".dappl" in
  let oc = Out_channel.create filename in 
  Printf.fprintf oc "%s\n" program; Out_channel.close oc;
  Printf.printf "Generated MDP benchmark with %n columns at %s, run\ndappl run %s to see MEU\n" cols filename filename;
  let program = mk_ladder_dt cols depth in 
  let filename = "experiments/ladder/ladder" ^ col_str ^ "_" ^ depth_str ^ ".pl" in
  let oc = Out_channel.create filename in 
  Printf.fprintf oc "%s\n" (print_program program); Out_channel.close oc;
  Printf.printf "Generated MDP benchmark with %n columns at %s, run\ndappl run %s to see MEU\n" cols filename filename