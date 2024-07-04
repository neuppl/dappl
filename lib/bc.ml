(*
  Boolean compilation for ~dappl~
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Sexplib.Std

exception BCError of string
exception UnboundVariableError

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
| ExactlyOne  of string list * bool
[@@deriving sexp_of]

let print_bexpr = fun be -> (Sexplib0__Sexp.to_string_hum (sexp_of_bexpr be))

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

let print_ident_tbl(t : ident_tbl) =
  Format.printf "PRINTING IDENT TBL:\n" ;
  Map.iteri t ~f:(
    fun ~key:x ~data:be ->
      Format.printf "VAR %s : VAL %s\n" x (print_bexpr be))

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

let print_wtmap(t : tbl) =
  Format.printf "PRINTING WEIGHT MAP:\n" ;
  Map.iteri t ~f:(
    fun ~key:x ~data:((a,b),(c,d)) ->
      Format.printf "VAR %s : LO (%f, %f), HI (%f, %f)\n" x a b c d)

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
| Ident s           ->  (match Map.find ids s with
                        | Some b  -> (b, TT, wts, [])
                        | None    -> raise UnboundVariableError)
| Flip f            ->  let new_var = "flip_"^(fresh ()) in
                        let wt      = prob_to_expect f in
                        let s'      = Map.add_exn wts ~key:new_var ~data:wt in
                        (Id(new_var), TT, s', [])
| Discrete l        ->  let probabilities = List.map l ~f:(fun (x,y) -> (x,prob_to_expect y)) in
                        let s'      = List.fold probabilities ~init:wts ~f:(fun mp (a, wt) -> Map.add_exn mp ~key:a ~data:wt) in
                        (ExactlyOne ((List.map l ~f:(fun (x,_)->x)), false), TT, s', [])
| Decision l        ->  let wt      = ((1.0 , 0.0), (1.0, 0.0)) in
                        let s'      = List.fold l ~init:wts ~f:(fun mp a -> Map.add_exn mp ~key:a ~data:wt) in
                        (ExactlyOne (l, true), TT, s', [])
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
                          (match Map.find ids s with
                          | Some(expr) ->
                              (unn, And(acc, expr), tbl, l)
                          | None ->
                              let (unn, acc, tbl, l)  = build_h e wts ids in
                              (unn, And(acc, Id s), tbl, l))
                        | _       -> raise (BCError "Expected ident on observe"))
| Ite(g, thn, els)  ->  (match g with
                        | Ident s ->
                          let (unn_t, acc_t, tbl_t, l_t)  = build_h thn wts ids in
                          let (unn_e, acc_e, tbl_e, l_e)  = build_h els tbl_t ids in
                          let unn_t'                      = conj (conj unn_t l_t false) l_e true in
                          let unn_e'                      = conj (conj unn_e l_e false) l_t true in
                          let poss                        = Map.find ids s in
                          (match poss with
                          | Some v ->
                              let unn = Or(And(v, unn_t'), And(Not v, unn_e')) in
                              let acc = Or(And(v, acc_t), And(Not v, acc_e)) in
                              (unn, acc, tbl_e, [])
                          | None  ->
                              let unn = Or(And(Id s, unn_t'), And(Not (Id s), unn_e')) in
                              let acc = Or(And(Id s, acc_t), And(Not (Id s), acc_e)) in
                              (unn, acc, tbl_e, []))
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
                            (fun p (r, nr) -> conj (conj p r true) nr false) in
                          (* Compute formula above, conjoin with names *)
                          let phis  = zip_with_fn names phis (fun t phi -> And(Id t, phi)) in
                          let phi   = List.fold phis ~init:FF ~f:(fun a b -> Or(a,b)) in
                          (* Conjoin gammas with names *)
                          let gammas = zip_with_fn names gammas (fun t g -> And(Id t, g)) in
                          let gamma   = List.fold gammas ~init:FF ~f:(fun a b -> Or(a,b)) in
                          (And(decision, phi), And(decision, gamma), tbl, [])
                        | _       -> raise (BCError "Expected ident on Choose"))
| Bind(x,b,e')      ->  let (phi_b, gamma_b, wt_b, rw_b) = build_h b wts ids in
                        let ids' = Map.add_exn ids ~key:x ~data:phi_b in
                        (* print_ident_tbl ids'; *)
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
  let rt            = Return(List.fold list_of_names ~init:True ~f:(fun e s -> And(e, Ident s))) in
  let v = List.fold_right list_of_names ~f:(fun x y -> Bind(x, e, y)) ~init:rt in
  (* Format.printf "unrolled: %s\n" (Sexplib0__Sexp.to_string_hum (Core_grammar.sexp_of_expr v)); *)
  v

(* -------------------------------------
  Compiling PropExpr to CF

A CF is a record with the same parts as PropExpr, except that
it is intended to be the boundary into RSDD--the BDD maker.

-------------------------------------- *)

(* rsdd_tbls map RSDD variable identifiers to weights *)
type rsdd_tbl = (int64, wt, Int64.comparator_witness) Map.t
let empty_tbl : rsdd_tbl = Map.empty (module Int64)

let print_rsdd_tbl(t: rsdd_tbl) =
  Format.printf "PRINTING RSDD WEIGHT MAP:\n" ;
  Map.iteri t ~f:(
    fun ~key:x ~data:((a,b),(c,d)) ->
      Format.printf "VAR %i : LO (%f, %f), HI (%f, %f)\n" (Int64.to_int_exn x) a b c d)

(* We maintain an association list of strings and VarLabels
  to enforce exhaustive patternmatch in ChooseWith. *)

let dlist : ((string * rsdd_var_label) list) ref = ref [];;
let insert_decision : string -> rsdd_var_label -> unit = fun x y ->
  let o = List.Assoc.find !dlist ~equal:String.equal x in
  match o with
  | None    -> dlist := (x,y)::!dlist
  | Some _  -> ()
let insert_decision_list : (string * rsdd_var_label) list -> unit = fun l ->
  (* List.iter (List.map l ~f:fst) ~f:(fun x ->Format.printf "Adding %s as decision\n" x); *)
  List.fold l ~init:() ~f:(fun _ (x,y) -> insert_decision x y)
(* let lookup : string -> rsdd_var_label = fun x ->
  let o = List.Assoc.find !dlist ~equal:String.equal x in
  match o with
  | None -> failwith "unbound decision error??"
  | Some ptr -> (*let _ = Printf.printf "found!\n" in*) ptr *)


type cf =
{
  unn           : rsdd_bdd_ptr;
  acc           : rsdd_bdd_ptr;
  decision_vars : rsdd_var_label list;
  num_vars      : int64;
  fn            : rsdd_wmc_params_e_u;
}

type seen_vars = (string, rsdd_bdd_ptr, String.comparator_witness) Map.t
let empty_seen_vars : seen_vars = Map.empty (module String)
let print_seen_vars(t : seen_vars) =
  Format.printf "PRINTING SEEN VARS:\n" ;
  Map.iter_keys t ~f:(
    fun z ->
      Format.printf "SAW VAR %s\n" z)

type decision_list = (string, rsdd_bdd_ptr, String.comparator_witness) Map.t
let empty_decisions : decision_list = Map.empty (module String)

let rec translate (prop : propexpr) : cf * rsdd_tbl =
  let builder                   = mk_bdd_builder_default_order 0L in
  let (ptr_unn, wt_map', sv, d) = _translate prop.unn prop.wtmap empty_tbl empty_seen_vars empty_decisions builder in
  let (ptr_acc, wt_map'', _, _) = _translate prop.acc prop.wtmap wt_map' sv d builder in
  let wt_map_list               = Map.to_alist ~key_order:`Increasing wt_map'' in
  let wmcparams                 = new_wmc_params_eu (List.map wt_map_list ~f:snd) in
  let (n, _)                    = bdd_new_var builder true in
  ({ unn           = bdd_and builder ptr_unn ptr_acc ;
    acc           = ptr_acc ;
    decision_vars = (List.map !dlist ~f:snd) ;
    num_vars      = n ;
    fn            = wmcparams }, wt_map'')
and _translate
  (exp : bexpr)
  (wts : tbl)
  (eus : rsdd_tbl)
  (seen : seen_vars)
  (d : decision_list)
  (builder : rsdd_bdd_builder)
  : rsdd_bdd_ptr * rsdd_tbl * seen_vars * decision_list =
(* Format.printf "DOING BEXPR %s\n" (print_bexpr exp); *)
match exp with
| TT            ->  (bdd_true builder, eus, seen, d)
| FF            ->  (bdd_false builder, eus, seen, d)
| Id s          ->  (match Map.find seen s with
                    | None      ->  let (x,y) = (bdd_new_var builder true) in
                                    (* Format.printf "Allocated new var %i for %s \n" (Int64.to_int_exn x) s; *)
                                    let v     = Map.find_exn wts s in
                                    let eus'  = Map.add_exn eus ~key:x ~data:v in
                                    let seen' = Map.add_exn seen ~key:s ~data:y in
                                    (y, eus', seen', d)
                    | Some ptr  ->  (ptr, eus, seen, d))
| And(a,b)      ->  let (ptr_a, eus_a, seen_a, d_a)  = _translate a wts eus seen d builder in
                    let (ptr_b, eus_b, seen_b, d_b)  = _translate b wts eus_a seen_a d_a builder in
                    (bdd_and builder ptr_a ptr_b, eus_b, seen_b, d_b)
| Or(a,b)       ->  let (ptr_a, eus_a, seen_a, d_a)  = _translate a wts eus seen d builder in
                    let (ptr_b, eus_b, seen_b, d_b)  = _translate b wts eus_a seen_a d_a builder in
                    (bdd_or builder ptr_a ptr_b, eus_b, seen_b, d_b)
| Xor(a,b)      ->  _translate (And(Or(a,b), Not(And(a,b)))) wts eus seen d builder
| Not a         ->  let (x,y,s, d')           = _translate a wts eus seen d builder in
                    (bdd_negate builder x, y, s, d')
| ExactlyOne(l, b)  ->  let hsh = List.fold l ~init:"" ~f:String.append in
                        match Map.find d hsh with
                        | None ->
                          let l'              = List.map l ~f:(fun _ -> bdd_new_var builder true) in
                          let exactly_one     = bdd_exactlyone builder (List.map l' ~f:fst) in
                          let l''             = zip_with_fn l l' (fun x (y,z) -> (x,y,z)) in
                          let eus'            = List.fold l'' ~init:eus
                                                  ~f:(fun e (x,y,_) -> Map.add_exn e ~key:y ~data:(Map.find_exn wts x)) in
                          let seen'           = List.fold l'' ~init:seen
                                                  ~f:(fun e (x,_,z) -> Map.add_exn e ~key:x ~data:z) in
                          let d'              = Map.add_exn d ~key:hsh ~data:exactly_one in
                          if b then insert_decision_list (zip_with_fn l l' (fun x (y,_) -> (x, mk_varlabel y)));
                          (exactly_one, eus', seen', d')
                        | Some ptr -> (ptr, eus, seen, d)

(* MEU. If cache is true, it is performed with caching, if not, it is just with pruning. *)
let perform_meu (c : cf) (cache : bool) =
  let num = Int64.of_int (List.length c.decision_vars) in
  if cache then
      let (meu, _, size) = bdd_meu c.unn c.acc c.decision_vars num c.fn in
      (extract meu, size)
  else
      let (meu, _, size) = bdd_meu_without_cache c.unn c.acc c.decision_vars num c.fn in
      (extract meu, size)

(* The entire pipeline *)
let infer (e : expr) (cache : bool) (debug_level : int) =
  let pe = bc e in
  let (cf, wt_map) = translate pe in
  if debug_level >= 1 then(
    Format.printf "AST:\n%s\n\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (Core_grammar.sexp_of_expr e)) ;
    Format.printf "UNN : \n%s\n\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (sexp_of_bexpr pe.unn));
    Format.printf "ACC : \n%s\n\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (sexp_of_bexpr pe.acc));
    if debug_level > 1 then (
      print_wtmap(pe.wtmap);
      print_rsdd_tbl(wt_map);
      Format.printf "\nSIZE : %i\n\n" (Int64.to_int_exn cf.num_vars))
  );
  perform_meu cf cache
