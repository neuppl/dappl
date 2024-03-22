(* 
  Abstraction layer on top of rsdd-ocaml
  to make programming with it slightly easier
*)

open Rsdd
open Core
(* open List *)
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
  | (lbl', _) :: xs ->  if Int64.equal lbl lbl' then true else lookup lbl xs

let rec dedup (l : weight_fn) : weight_fn = 
  match l with 
  | [] -> [] 
  | [x] -> [x] 
  | (lbl, eu)::(lbl', eu')::xs -> if Int64.equal lbl lbl' then dedup ((lbl, eu) :: xs) else (lbl, eu)::(dedup ((lbl',eu')::xs)) 

let merge_weight_fns (l1 : weight_fn) (l2 : weight_fn) : weight_fn =
  let l = List.sort (List.append l1 l2) ~compare:(fun x y -> Int64.compare (fst x) (fst y)) in 
  dedup l

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

let mk_from_ptr (bdd : rsdd_bdd_builder) (ptr : rsdd_bdd_ptr) : cf =
  {
    unn = ptr; 
    acc = bdd_true bdd;
    fn = [];
    rw = Int64.Set.empty
  }

let mk_newvar_prob (bdd : rsdd_bdd_builder) (pr : float) : cf = 
  let (lbl, ptr) = bdd_new_var bdd true in 
  (* let _  = Printf.printf "allocating pr with value %F and label %n\n" pr (Int64.to_int_exn lbl) in *)
  let wt : eu * eu = ((1.0 -. pr, 0.0), (pr, 0.0)) in
  {
    unn = ptr;
    acc = bdd_true bdd;
    fn = [(lbl, wt)];
    rw = Int64.Set.empty
  }

let mk_newvar_rew (bdd : rsdd_bdd_builder) (rw : float) : cf = 
  let (lbl, ptr) = bdd_new_var bdd true in 
  (* let _  = Printf.printf "allocating reward with value %F and label %n\n" rw (Int64.to_int_exn lbl) in *)
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
    acc = bdd_and bdd a.acc b.acc;
    fn = merge_weight_fns a.fn b.fn;
    rw = Set.union a.rw b.rw
  }

let cf_ite (bdd : rsdd_bdd_builder) (a : cf) (b : cf) (c : cf): cf =
  {
    unn = bdd_ite bdd a.unn b.unn c.unn;
    acc = bdd_ite bdd a.unn b.acc c.acc;
    fn = merge_weight_fns a.fn (merge_weight_fns b.fn c.fn);
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

let mk_singleton (b : rsdd_bdd_builder) (a : int64) (l : rsdd_bdd_ptr) : cf = 
  {
    unn = l;
    acc = bdd_true b;
    fn = [a,((1.0, 0.0), (1.0, 0.0))];
    rw = Int64.Set.empty
  }

let mk_newvar_dec (bdd : rsdd_bdd_builder) (decisions : string list) : cf * (string * rsdd_var_label) list  = 
  (* let _ = Printf.printf "Allocating a decision with %n many choices \n" (List.length decisions) in *)
  (* match decisions with
  | [] -> failwith "empty decisions!"
  | [x] -> let (a,b) = bdd_new_var bdd true in ((mk_singleton bdd a b), [(x, mk_varlabel a)])
  | _ -> *)
    let f : 'a -> int64 * rsdd_bdd_ptr = fun _ -> bdd_new_var bdd true in 
    let decisions_as_vars = List.map decisions ~f:f in
    let vars_as_int64 = List.map decisions_as_vars ~f:(fun (a,_) -> a ) in 
    let vars_as_varlabel = List.map vars_as_int64 ~f:(fun x -> mk_varlabel x) in 
    assert(List.length decisions = List.length vars_as_varlabel);
    let list_final = List.zip_exn decisions vars_as_varlabel in
    (exactly_one bdd vars_as_int64, list_final)
