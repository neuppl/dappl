(*
  This file defines useful functions to replicate the methodology
  in Derkinderen et al., ECAI 2020.
*)

open Mk_expr
open Core
open Dappl.Core_grammar

(* The two methodologies are either method 1 (Select) or method 2 (New) *)
type methodology = Select | New

(* The Bayesian networks we'll be studying are Asia, Earthquake, Survey *)
type bn = Asia | Earthquake | Survey

(* Simple ref counter for new variables *)
let ct = ref (-1)
let inc () = (ct := 1 + !ct) ; (Int.to_string !ct)

(* Randomly decides whether to make into a discrete or a decision. *)
let mk_disc_or_dec (l : (string * float) list) =
  if Random.bool () then mk_discrete l else mk_dec (List.map l ~f:fst)

(*
  for e: expr, we return
    d <- [s];
    y <- e ;
    z <- if d then flip f else return ff ;
    return y || z ;
*)
let introduce_new_dec (e : expr) (f : float): expr =
  let n             = inc () in
  let ds_fn         = mk_bind_dec ("new_dec"^n) ["TMP_VAR"^n] in
  let bind_e_fn     = mk_bind ("bind_to"^n) e in
  let ite_fn        = mk_bind ("ite_"^n)
                        (mk_ite ("new_dec"^n) (mk_flip f) (Return(False))) in
  let return        = Return(Or(Ident("bind_to"^n), Ident("ite_"^n))) in
  ds_fn (bind_e_fn (ite_fn return))
let introduce_new_dec_rand e  = introduce_new_dec e (Random.float 1.)

let bind_rand_new_dec (s : string) (e : expr) (f: float) (e' : expr): expr =
  let e_rand = if Random.bool () then introduce_new_dec e f else e in
  Bind(s, e_rand, e')
let bind_rand_new_dec_pr (s : string) (e : expr) (f: float) (pr : float) (e' : expr) =
  let e_rand = if (Float.compare (Random.float 1.) pr) > 0 then introduce_new_dec e f else e in
  Bind(s, e_rand, e')

(*
  Does method 1 for adding rewards
  For each x in bound_vars, we create the clause
  var <- if x then ([REWARD?] ; return tt) else ([REWARD?]; return tt)
  where [REWARD?] is described in the head of the file.
  all variables are conjoined to make the final expression.

  The ITE on reward values reflects the constraints done in Derkinderen et al.
*)
let rec method_1 (nodes : string list) : expr =
  let ct      = ref (-1) in
  let n'      = List.filter
                  (List.map nodes ~f:(fun x -> (ct := !ct + 1) ; generate_clause !ct x))
                  ~f:(Option.is_some)
                in
  let n''     = List.map n' ~f:(fun x -> match x with Some y -> y | None -> failwith "Error Method 1") in
  let result  = List.fold_right n'' ~f:(fun (s, _) e -> And(Ident s, e)) ~init:True in
  List.fold_right n'' ~f:(fun (_, f) y -> f y) ~init:result
and generate_clause (i : int) (node : string) : (string * (expr -> expr)) option =
  let b1 = Random.int 100 in
  let b2 = Random.int 100 in
  let r1 = mk_reward_ret (Float.of_int b1) true in
  let r2 = mk_reward_ret (Float.of_int b2) true in
  let ite = (match (b1 < 80, b2 < 30) with
            | (true, true)  -> Some(mk_ite node r1 r2)
            | (true, false) -> Some(mk_ite node r1 (Return True))
            | (false, true) -> Some(mk_ite node (Return True) r2)
            | _             -> None) in
  match ite with
  | Some(expr)  ->  let varname = "method_1_var_"^(Int.to_string i) in
                    Some(varname ,(mk_bind varname expr))
  | None        ->  None



(*
  Does method 2 for adding rewards
  We sample a random interpretation of the node.
  We conjoin them together. Do this five times, then disjoin all.
*)
let rec method_2 (nodes: string list) : expr =
  let functions_to_iter = ref [] in
  let rew_vars          = ref [] in
  for i = 0 to 5 do
    let iter  = Int.to_string i in
    let x     = generate_clause nodes in
    let f     = mk_bind ("method_2_sample_"^iter) x in
    let str'  = mk_ite
                  ("method_2_sample_"^iter)
                  (mk_reward_ret_rand true)
                  (mk_reward_ret_rand true)
                in
    let f' = mk_bind ("method_2_rew_"^iter) str' in
    functions_to_iter := f' :: f :: !functions_to_iter ;
    rew_vars          := !rew_vars @ ["method_2_rew_"^iter]
  done;
  let disjoin_rews = List.fold !rew_vars ~init:False ~f:(fun x y -> Or(x,Ident y)) in
  List.fold !functions_to_iter ~init:disjoin_rews ~f:(fun a f -> f a)
and generate_clause (nodes : string list) : expr =
  let final : expr list ref = ref [] in
  let create_literal        = fun s b -> if b then Ident(s) else Not(Ident(s)) in
  for _ = 0 to 5 do
    let x   = List.map nodes ~f:(fun _ -> Random.bool ()) in
    let z   = List.zip_exn nodes x in
    let y   = List.map z ~f:(fun (a,b) -> create_literal a b) in
    let fd  = List.fold y ~init:True ~f:(fun a b -> And(a,b)) in
    final := fd :: !final
  done;
  List.fold !final ~init:False ~f:(fun x y -> Or(x,y))

