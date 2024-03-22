(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Rsdd_abstractions
open Typechecker
open Hashtbl
(* Pp for debugging purposes only *)
(* open Pp *)

(* 
  Architecture:
  ---------------------------------
  dappl program 
      |
    (bc)
      |
      v
  tuple of 
  unnormalized formula bexpr
  accepting formula bexpr
  String -> Wt Map.t of variables
      |
    (translate)
      |
      v
  bddptrs
      |
    (infer)
      |
      v 
  MEU
*)

type bexpr = 
| TT | FF 
| Id          of string
| And         of bexpr * bexpr
| Or          of bexpr * bexpr
| Xor         of bexpr * bexpr
| Not         of bexpr
| ExactlyOne  of bexpr list

type wt = (float * float) * (float * float)

let prob_to_expect : float -> wt = fun pr ->
  ((1.0 -. pr, 0.0), (pr, 0.0))
let rw_to_expect : float -> wt = fun rw ->
  ((1.0 , 0.0), (1.0, rw))

type tbl = (string, wt, String.comparator_witness) Map.t

let empty_tbl : tbl = Map.empty (module String)

let rec bc : expr -> bexpr * bexpr * tbl = fun e ->
  let (unn, acc, tbl, rws)  = build_stuff_up_h e empty_tbl in
  let final_unn             = List.fold rws ~init:unn ~f:(fun b r -> And(Id(r),b)) in
  (final_unn, acc, tbl)
and build_stuff_up_h : expr -> tbl -> bexpr * bexpr * tbl * string list = fun e s -> match e with
| True  -> (TT, TT, s, [])
| False -> (TT, TT, s, [])
| _     -> failwith "TODO"


let infer _ = failwith "TODO"


(* let bc' : rsdd_bdd_builder -> tblmap * expr -> cf = fun bdd (s, e) -> 
match e with
| Reward k -> mk_newvar_rew bdd k
| Flip f  ->  mk_newvar_prob bdd f
| True    -> t bdd 
| False   -> f bdd
| And *)
