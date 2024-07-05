(*
  This file defines utilities to generate DTProblog strings.
*)

open Random
open Core
open OUnit2

(* We make variable names via a count. *)
type var = Flip | Choice | Reward
type varname = string

type literal = Var of varname | Not of varname

let ct = ref 0 ;;

let mk_varname (x : var) : varname =
  let v = Int.to_string !ct in
  let _ : unit = ct := !ct + 1 in
  match x with
  | Flip -> "f" ^ v
  | Choice -> "c" ^ v
  | Reward -> "r" ^ v

let mk_literal (x : var) (b : bool) : literal =
  let v = mk_varname x in
  if b then Var v else Not v

let flip_lit (l : literal) =
  match l with
  | Var s -> Not s
  | Not s -> Var s

let lit_same_name (x : literal) (y : literal) =
match x,y with
| Var(x), Var(y) -> String.equal x y
| Not(x), Var(y) -> String.equal x y
| Var(x), Not(y) -> String.equal x y
| Not(x), Not(y) -> String.equal x y

(* There are four types of clauses:
  1. variable declarations 0.5 :: fliphalf .
  2. choice declarations ? :: decision .
  3. rule declarations x :- y, z, a, b, c.
  4. utility declarations utility(rewvar, 12).
  5. evidence (observe) declarations evidence(var, bool).

  A Problog program is a list of clauses.
*)

type clause = Flip of float * literal
              | Choice of literal
              | Rule of literal * literal list
              | Utility of literal * int
              | Query of literal
              | Evidence of literal * bool
type problog_program = clause list

(* Print utilities for clauses. *)
let print_lit (l : literal) : string =
  match l with
  | Var s -> s
  | Not s -> String.concat ["not(";s;")"]

let print_clause (c : clause) : string =
  match c with
  | Flip(f, v)      ->  if ((Float.equal f 1.) || (Float.equal f 0.)) then
                        String.concat ~sep:" " [(Float.to_string f)^"0" ; "::" ;  print_lit v ; "."]
                        else String.concat ~sep:" " [Float.to_string f ; "::" ;  print_lit v ; "."]
  | Choice v        ->  String.concat ~sep:" " ["?" ; "::" ;  print_lit v; "."]
  | Rule(v, l)      -> let s = String.concat ~sep:", " (List.map ~f:print_lit l) in
                      String.concat ~sep:" " [print_lit v; ":-"; s ; "."]
  | Utility(v,n)    -> String.concat ~sep:" "
                      ["utility("; print_lit v ; "," ; Int.to_string n ; ")."]
  | Query v         -> String.concat ~sep:" " ["query("; print_lit v ; ")."]
  | Evidence (v, b) -> String.concat ~sep: " "
                      ["evidence(" ; print_lit v ; "," ; Bool.to_string b ; ")."]

let print_program (p : problog_program) : string =
  let filter_fn = fun x -> match x with | Rule(_, []) -> false | _ -> true in
  let p = List.filter p ~f:filter_fn in
  let m = List.map p ~f:print_clause in
  String.concat ~sep:"\n" m

(* Extracts literals from a program. *)
let extract_literal (p: clause) : literal  =
  match p with
  | Flip(_, v) -> v
  | Choice v -> v
  | Rule (v, _) -> v
  | Utility(v,_) -> v
  | Query v -> v
  | Evidence(v,_) -> v

let rec extract_literal_pg (p: problog_program) : literal list  =
  match p with
  | [] -> []
  | x :: xs ->  let l = extract_literal x :: extract_literal_pg xs in
                let dedup_fn = fun x y ->
                                match x,y with
                                | Var(x), Var(y) -> String.compare x y | Not(x), Not(y) -> String.compare x y
                                | Not(x), Var(y) -> String.compare x y | Var(x), Not(y) -> String.compare x y in
                List.dedup_and_sort l ~compare:dedup_fn

(* Produces an expression
  var :- .
  utility(var, rew). IS LAZY FOR A REASON!!! *)

let mk_reward (_ : unit) : literal * problog_program =
  let x = int 100 in
  let v = mk_literal Reward true in
  (v, [Rule(v,[]) ; Utility(v, x)])

let mk_reward_det (i : int) : literal * problog_program =
  let v = mk_literal Reward true in
  (v, [Rule(v,[]) ; Utility(v, i)])

(* produces an expression f :: x; IS LAZY FOR A REASON!!! *)
let mk_flip (_ : unit): literal * clause =
  let v = mk_literal Flip true in
  let f = Random.float 1. in
  (v, Flip(f, v))

let mk_flip_det (f : float): literal * clause =
  let v = mk_literal Flip true in
  (v, Flip(f, v))

let mk_flip_pg : literal * problog_program = let (a,b) = mk_flip () in (a, [b])

(* Produces a rule for a new variable given the list. *)
let mk_rule_with_newvar (l : literal list) =
  let v = mk_literal Reward true in
  Rule(v, l)

let mk_rule (v : literal) (l : literal list) =
  Rule(v, l)

(* produces an expression
  ? :: v_0 ... ? :: v_i *)
let mk_dec ?(names = []) (i : int):  literal list * problog_program =
  match names with
  | [] ->
    let l = List.init i ~f:(fun _ -> mk_literal Choice true) in
    let l' = List.map ~f:(fun v -> Choice v) l in
    (l, l')
  | _ ->
    let l = List.map ~f:(fun v -> Var v) names in
    let l' = List.map ~f:(fun v -> Choice v) l in
    (l, l')


(* Propagates a literal l across rules in program p *)
let rec propagate_literal (l : literal) (p : problog_program) : problog_program =
  match p with
  | [] -> []
  | x :: xs ->
    match x with
    | Rule(v, vl) -> Rule(v, l::vl) :: propagate_literal l xs
    | x -> x :: propagate_literal l xs

let rec propagate_literal_list (l : literal list) (p : problog_program) : problog_program =
  match l with
  | [] -> p
  | x :: xs -> propagate_literal_list xs (propagate_literal x p)

let mk_choosewith_h (l : literal list) (e : problog_program list) =
  let mute = ref e in
  let n = List.length l in
  for i=0 to n-1 do
    let lit = List.nth_exn l i in
    let f = fun j -> if j=i
            then propagate_literal lit (List.nth_exn !mute j)
            else propagate_literal (flip_lit lit) (List.nth_exn !mute j) in
    let e' = List.init n ~f:f in
    mute := e' done;
  !mute

let mk_choosewith (d : problog_program) (e: problog_program list) : problog_program =
  let _ : unit = assert_bool "length mismatch in choosewith!"
          (List.length d = List.length e) in
  let extract_lit = fun c -> match c with
                            | Choice l -> l
                            | _ -> failwith "invalid choice in Choosewith" in
  let dlits = List.map d ~f:extract_lit in
  let with_props = mk_choosewith_h dlits e in
  let queries = List.map dlits ~f:(fun v -> Query v) in
  List.append (List.concat (d :: with_props)) queries

(* Given two problog programs [l; r], and a literal ell,
  adds ell to all rules in l, not(ell) to all rules in r
  if no r is given, only add ell to all rules in l.
*)
let mk_ite (l: literal) (e : problog_program list) : problog_program =
  match (List.length e) with
  | 2 ->  let p1, p2 = List.nth_exn e 0 , List.nth_exn e 1 in
          let p1' = propagate_literal l p1 in
          let p2' = propagate_literal (flip_lit l) p2 in
          List.append p1' p2'
  | 1 ->  let p1 = List.nth_exn e 0 in
          let p1' = propagate_literal l p1 in
          p1'
  | _ ->  failwith "dude, have two conditions for an ite. cmon that's CS0 shit"

let mk_ite_list (l: literal list) (e : problog_program list) : problog_program =
  let l' = List.map l ~f:flip_lit in
  match (List.length e) with
  | 2 ->  let p1, p2 = List.nth_exn e 0 , List.nth_exn e 1 in
          let p1' = propagate_literal_list l p1 in
          let p2' = propagate_literal_list l' p2 in
          List.append p1' p2'
  | 1 ->  let p1 = List.nth_exn e 0 in
          let p1' = propagate_literal_list l p1 in
          p1'
  | _ ->  failwith "dude, have two conditions for an ite. cmon that's CS0 shit"


(* Produces an observe (evidence) *)

let mk_observe (l : literal) (b: bool): problog_program =
  match l with
  | Var _ -> [Evidence (l, b)]
  | Not _ -> failwith "tried to make evidence with negative literal!"





