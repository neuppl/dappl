(* 
  Abstraction layer on top of rsdd-ocaml
  to make programming with it slightly easier
*)

open Rsdd
open Core
(* open Core_grammar
open Hashtbl
open Set *)

(*
  We make a data structure containing:
  builder : the bdd builder we pass around
  unn : the unnormalized formula
  acc : the accepting formula
  fn : the weight fn
  rw : the set of reward variables to track 
*)

type eu = (float * float)
type weight_fn = (int64 * (eu * eu)) list
type rw_set = Int64.Set.t

let mk_eu (a :float) (b : float) : eu = (a,b)

type cf = 
{
  unn : rsdd_bdd_ptr;
  acc : rsdd_bdd_ptr;
  fn : weight_fn;
  rw : rw_set
}

let rec lookup (lbl : int64) (l : weight_fn) : bool =
  match l with 
  | [] -> false
  | (lbl', _) :: xs -> if Int64.equal lbl lbl' then true else lookup lbl xs

let rec merge_weight_fns (l1 : weight_fn) (l2 : weight_fn) : weight_fn =
  match l1 with
  | [] -> l2
  | x :: xs -> 
    match l2 with 
    | [] -> l1 
    | _ -> if lookup (fst x) l2 then merge_weight_fns xs l2 else merge_weight_fns xs (x::l2)


(*
  Some constants to make the actual implementation look nicer.
*)

let t (bdd : rsdd_bdd_builder) : cf = 
  {
    unn = bdd_true bdd;
    acc = bdd_true bdd;
    fn = [];
    rw = Int64.Set.empty
  }

let f (bdd : rsdd_bdd_builder) : cf = 
  {
    unn = bdd_false bdd;
    acc = bdd_true bdd;
    fn = [];
    rw = Int64.Set.empty
  }

let mk_newvar_prob (bdd : rsdd_bdd_builder) (pr : float) : cf = 
  let (lbl, ptr) = bdd_new_var bdd true in 
  let wt : eu * eu = ((1.0 -. pr, 0.0), (pr, 0.0)) in
  {
    unn = ptr;
    acc = bdd_true bdd;
    fn = [(lbl, wt)];
    rw = Int64.Set.empty
  }

let mk_newvar_rew (bdd : rsdd_bdd_builder) (rw : float) : cf = 
  let (lbl, ptr) = bdd_new_var bdd true in 
  let wt : eu * eu = ((1.0 , 0.0), (1.0, rw)) in
  {
    unn = ptr;
    acc = bdd_true bdd;
    fn = [(lbl, wt)];
    rw = Set.add Int64.Set.empty lbl
  }

(* Helper functions and their infix operations. *)

let cf_not (bdd : rsdd_bdd_builder) (x : cf) : cf = 
  {
    unn = bdd_negate bdd x.unn;
    acc = x.acc ; fn = x.fn ; rw = x.rw
  }

let cf_and (bdd : rsdd_bdd_builder) (a : cf) (b: cf): cf = 
  {
    unn = bdd_and bdd a.unn b.unn;
    acc = bdd_and bdd a.acc b.acc;
    fn = merge_weight_fns a.fn b.fn;
    rw = Set.union a.rw b.rw
  }

let cf_or (bdd : rsdd_bdd_builder) (a : cf) (b: cf): cf = 
  {
    unn = bdd_or bdd a.unn b.unn;
    acc = bdd_or bdd a.acc b.acc;
    fn = merge_weight_fns a.fn b.fn;
    rw = Set.union a.rw b.rw
  }

let cf_ite (bdd : rsdd_bdd_builder) (a : cf) (b : cf) (c : cf): cf =
  {
    unn = bdd_ite bdd a.unn b.unn c.unn;
    acc = bdd_ite bdd a.unn b.acc c.acc;
    fn = merge_weight_fns (merge_weight_fns a.fn b.fn) c.fn;
    rw = Set.union (Set.union a.rw b.rw) c.rw
  }


(* The ExactlyOne constraint *)
let make_unit x = let p : eu * eu = ((1.0, 0.0), (1.0, 0.0)) in (x,p)

let exactly_one (b : rsdd_bdd_builder) (l : int64 list) : cf = 
  {
    unn = bdd_exactlyone b l;
    acc = bdd_true b;
    fn = List.map l ~f:make_unit;
    rw = Int64.Set.empty
  }

let mk_newvar_dec (bdd : rsdd_bdd_builder) (decisions : string list) : cf * rsdd_var_label list  = 
  let f : 'a -> int64 * rsdd_bdd_ptr = fun _ -> bdd_new_var bdd true in 
  let decisions_as_vars = List.map decisions ~f:f in
  let vars_as_int64 = List.map decisions_as_vars ~f:(fun (a,_) -> a ) in 
  let vars_as_varlabel = List.map vars_as_int64 ~f:(fun x -> mk_varlabel x) in 
  (exactly_one bdd vars_as_int64, vars_as_varlabel)
