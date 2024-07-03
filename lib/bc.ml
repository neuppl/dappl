(*
  Boolean compilation for ~dappl~
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Rsdd_abstractions
open Sexplib.Std

(*
  Architecture:
  ---------------------------------
  dappl program
      |
    (bc)
      |
      v
  PropExpr
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

let rec zip_with_fn = fun l r f -> match l, r with
| [] , [] -> []
| x :: xs, y :: ys -> (f x y) :: (zip_with_fn xs ys f)
| _ -> failwith "bruh"

(* ---------------------------------------------------
  Defining the Boolean Expr to be compiled into BDD
----------------------------------------------------*)

type bexpr =
| TT | FF
| Id          of string
| And         of bexpr * bexpr
| Or          of bexpr * bexpr
| Xor         of bexpr * bexpr
| Not         of bexpr
| ExactlyOne  of string list
[@@deriving sexp_of]

(* subst e x e' = e[x/e'] *)
let rec subst : bexpr -> string -> bexpr -> bexpr = fun e s e' -> match e with
| Id t            -> if String.equal s t then e' else Id t
| And (l,r)       -> And (subst l s e', subst r s e')
| Or (l,r)        -> Or (subst l s e', subst r s e')
| Xor (l,r)       -> Xor (subst l s e', subst r s e')
| Not x           -> Not (subst x s e')
| x               -> x

(* Given (b, R), computes b and R, or, with ?neg = true, b and neg R*)
let conj (b : bexpr) (r : string list) (do_not_negate : bool) =
  if do_not_negate then
    List.fold r ~init:b ~f:(fun b s -> And(b, Id s))
  else List.fold r ~init:b ~f:(fun b s -> And(b, Not(Id s)))

(* -----------------------------------------------------------------
  Defining the weight map and elements of the expectation semiring
------------------------------------------------------------------ *)

type wt = (float * float) * (float * float)

let prob_to_expect : float -> wt = fun pr ->
  ((1.0 -. pr, 0.0), (pr, 0.0))
let rw_to_expect : float -> wt = fun rw ->
  ((1.0 , 0.0), (1.0, rw))

(* tbls map variable identifiers to weights *)
type tbl = (string, wt, String.comparator_witness) Map.t
let empty_tbl : tbl = Map.empty (module String)

(* ident_tbls map bound variables to their bexprs *)
type ident_tbl = (string, bexpr, String.comparator_witness) Map.t
let empty_ident_tbl : ident_tbl = Map.empty (module String)

(* A simple counter to build fresh names *)
let ct = ref (-1)
let fresh = fun _ -> (ct := !ct + 1) ; Int.to_string !ct


(* -------------------------------------
  Compiling AST to PropExpr

A PropExpr is a record with three parts:

  unn : the unnormalized formula
  acc : the accepting evidence
  wtmap : the weight map

Essentially the RHS of Figure 21.
-------------------------------------- *)

type propexpr = {
  unn : bexpr;
  acc : bexpr;
  wtmap : tbl
}

exception BCError of string
exception UnboundVariableError

(* bc uses a helper function build_h ... *)
let rec bc : expr -> propexpr = fun e ->
  (*
    unn : the unnormalized formula. does not incorporate evidence
    acc : the normalizing formula. is evidence
    tbl : maps vars to weights
    rws : extra reward variables in the cache, that are added on in the end.
  *)
  let (unn, acc, tbl, rws)  = build_h e empty_tbl empty_ident_tbl in
  let final_unn             = List.fold rws ~init:unn ~f:(fun b r -> And(Id(r),b)) in
  { unn = final_unn ; acc = acc ; wtmap = tbl}
(* which takes in an:
  expression e,
  a weight function wts
  and a store of binds ids
  to produce the 4-tuple explained in the paper. *)
and build_h : expr -> tbl -> ident_tbl -> bexpr * bexpr * tbl * string list =
fun e' wts ids  -> match e' with
(* Base Cases *)
| True              ->  (TT, TT, wts, [])
| False             ->  (FF, TT, wts, [])
(* marked sus *)
| Ident s           ->  (match Map.find ids s with
                        | Some b  -> (b, TT, wts, [])
                        | None    -> raise UnboundVariableError)
| Flip f            ->  let new_var = "flip_"^(fresh ()) in
                        let wt      = prob_to_expect f in
                        let s'      = Map.add_exn wts ~key:new_var ~data:wt in
                        (Id(new_var), TT, s', [])
| Discrete l        ->  let probabilities = List.map l ~f:(fun (x,y) -> (x,prob_to_expect y)) in
                        let s'      = List.fold probabilities ~init:wts ~f:(fun mp (a, wt) -> Map.add_exn mp ~key:a ~data:wt) in
                        (ExactlyOne (List.map l ~f:(fun (x,_)->x)), TT, s', [])
| Decision l        ->  let wt      = ((1.0 , 0.0), (1.0, 0.0)) in
                        let s'      = List.fold l ~init:wts ~f:(fun mp a -> Map.add_exn mp ~key:a ~data:wt) in
                        (ExactlyOne l, TT, s', [])
(* Inductive Cases *)
| Return p          ->  build_h p wts ids
| Reward(k,e)       ->  let (unn, acc, tbl, l)      = build_h e wts ids in
                        let new_var                 = "rew_"^(fresh ()) in
                        let wt                      = rw_to_expect k in
                        let wts                     = Map.add_exn tbl ~key:new_var ~data:wt in
                        (unn, acc, wts, new_var :: l)
| Observe(b, e)     ->  (match b with
                        | Ident s ->
                          let (unn, acc, tbl, l)  = build_h e wts ids in
                          (unn, And(acc, Id s), tbl, l)
                        | _       -> raise (BCError "Expected ident on observe"))
| Ite(g, thn, els)  ->  (match g with
                        | Ident s ->
                          let (unn_t, acc_t, tbl_t, l_t) = build_h thn wts ids in
                          let (unn_e, acc_e, tbl_e, l_e) = build_h els tbl_t ids in
                          let unn_t'  = conj (conj unn_t l_t false) l_e true in
                          let unn_e'  = conj (conj unn_e l_e false) l_t true in
                          let unn     = Or(And(Id s, unn_t'), And(Not(Id s), unn_e')) in
                          let acc     = Or(And(Id s, acc_t), And(Not(Id s), acc_e)) in
                          (unn, acc, tbl_e, [])
                        | _       -> raise (BCError "Expected ident on ITE"))
| ChooseWith(x, l)  ->  (match x with
                        | Ident s ->
                          let decision = (match Map.find ids s with
                                          | Some b  -> b
                                          | None    -> raise UnboundVariableError) in
                          let (names, exprs) = List.unzip l in
                          (* Compute varphi_i, gamma_i, R_i for all i *)
                          let f =
                            fun expr (l, wts') ->
                              let (unn, acc, wts'', lbls'') = build_h expr wts' ids in
                              ((unn, acc, lbls'') :: l, wts'') in
                          let (bexprs, tbl) = List.fold_right exprs ~f ~init:([], wts) in
                          (* Computes varphi_i and R_i and {not R_j for j != i} *)
                          let (phis, gammas, rews) = List.unzip3 bexprs in
                          let rews_to_rm = fun i ->
                            let ri = List.nth_exn rews i in
                            List.concat (List.filter rews ~f:(fun l -> not (List.equal String.equal l ri))) in
                          let rews_and_rews_to_rm =
                            List.init (List.length rews) ~f:(fun i -> (List.nth_exn rews i), rews_to_rm i) in
                          let phis = zip_with_fn phis rews_and_rews_to_rm
                            (fun p (r, nr) -> conj (conj p r false ) nr true) in
                          (* Compute formula above, conjoin with names *)
                          let phis  = zip_with_fn names phis (fun t phi -> And(Id t, phi)) in
                          let phi   = List.fold phis ~init:FF ~f:(fun a b -> Or(a,b)) in
                          (* Conjoin gammas with names *)
                          let gammas = zip_with_fn names gammas (fun t g -> And(Id t, g)) in
                          let gamma   = List.fold gammas ~init:FF ~f:(fun a b -> Or(a,b)) in
                          (And(decision, phi), And(decision, gamma), tbl, [])
                        | _       -> raise (BCError "Expected ident on Choose"))
| Bind(x,b,e')      ->  let (phi_b, gamma_b, wt_b, rw_b) = build_h b wts ids in
                        Printf.printf "%s\n" (Sexplib0__Sexp.to_string_hum(sexp_of_expr e'));
                        let ids' = Map.add_exn ids ~key:x ~data:phi_b in
                        Printf.printf "added key %s !\n" x;
                        let (phi_e, gamma_e, wt_e, rw_e) = build_h e' wt_b ids' in
                        (phi_e, And(gamma_b, gamma_e), wt_e, rw_b @ rw_e)
| Loop(n,e)         ->  build_h (unroll n e) wts ids
(* Boolean operations *)
| And(a,b)          ->  let (phi_a, gamma_a, wt_a, rw_a) = build_h a wts ids in
                        let (phi_b, gamma_b, wt_b, rw_b) = build_h b wt_a ids in
                        (And(phi_a, phi_b), And(gamma_a, gamma_b), wt_b, rw_a @ rw_b)
| Or(a,b)           ->  let (phi_a, gamma_a, wt_a, rw_a) = build_h a wts ids in
                        let (phi_b, gamma_b, wt_b, rw_b) = build_h b wt_a ids in
                        (Or(phi_a, phi_b), And(gamma_a, gamma_b), wt_b, rw_a @ rw_b)
| Xor(a,b)          ->  let (phi_a, gamma_a, wt_a, rw_a) = build_h a wts ids in
                        let (phi_b, gamma_b, wt_b, rw_b) = build_h b wt_a ids in
                        (Xor(phi_a, phi_b), And(gamma_a, gamma_b), wt_b, rw_a @ rw_b)
| Not(a)            ->  let (phi_a, gamma_a, wt_a, rw_a) = build_h a wts ids in
                        (Not(phi_a), gamma_a, wt_a, rw_a)
and unroll : int -> expr -> expr =
fun n e ->
  let list_of_names = List.init n ~f:(fun i -> "LOOP_VAR_"^(Int.to_string i)) in
  List.fold_right list_of_names ~f:(fun x y -> Bind(x, e, y)) ~init:(Return(True))

(* -------------------------------------
  Compiling PropExpr to CF

A CF is a record with the same parts as PropExpr, except that
it is intended to be the boundary into RSDD--the BDD maker.

-------------------------------------- *)

let rec translate (prop : propexpr) : cf =
  let size    = Map.length prop.wtmap in
  let builder = mk_bdd_builder_default_order (Int64.of_int size) in
  let ptr_unn = _translate prop.unn builder
  and ptr_acc = _translate prop.acc builder
  and wt_map  = _translate_wtmap  prop.wtmap in
  { unn = ptr_unn ; acc = ptr_acc ; fn = wt_map}
and _translate (exp : bexpr) (builder : rsdd_bdd_builder): rsdd_bdd_ptr = match exp with
| TT            ->  bdd_true builder
| FF            ->  bdd_false builder
| Id _          ->  snd (bdd_new_var builder true)
| And(a,b)      ->  bdd_and builder (_translate a builder) (_translate b builder)
| Or(a,b)       ->  bdd_or builder (_translate a builder) (_translate b builder)
| Xor(a,b)      ->  _translate (And(Or(a,b), Not(And(a,b)))) builder
| Not a         ->  bdd_negate builder (_translate a builder)
| ExactlyOne l  ->  let (x, _) = mk_newvar_dec builder l in x.unn

and _translate_wtmap (_ : tbl) : weight_fn = failwith "NotYetImplemented"

let infer _ = failwith "TODO"



