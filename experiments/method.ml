(*
  This file defines useful functions to replicate the methodology
  in Derkinderen et al., ECAI 2020.
*)

open Mk_expr
open Core

(* The two methodologies are either method 1 (Select) or method 2 (New) *)
type methodology = Select | New

(* The Bayesian networks we'll be studying are Asia, Earthquake, Survey *)
type bn = Asia | Earthquake | Survey

(* for e: string, instead of x <- e, we return 
d <- [s];
y <- e ;
z <- if d then flip f else false ;
x <- y || z ;
*)
let introduce_new_dec (e : string) (f : float): string * varname = 
  let (s, d, _) = mk_dec 1 in
  let (b1, y) = mk_bind e in
  let (b2, z) = let flip = "flip "^ (Float.to_string f) in 
                mk_bind (mk_ite d [flip ; "false"]) in
  let (b3, x) = mk_bind (String.concat ~sep:" " [y ; "||" ; z]) in
  (String.concat ~sep:"\n" [s;b1;b2;b3], x)
let introduce_new_dec_custom (id : string) (e : string)  (f : float): string * varname = 
  let (s, d, _) = mk_dec 1 in
  let (b1, y) = mk_bind e in
  let (b2, z) = let flip = "flip "^ (Float.to_string f) in 
                mk_bind (mk_ite d [flip ; "false"]) in
  let (b3, x) = mk_bind_custom id (String.concat ~sep:" " [y ; "||" ; z]) in
  (String.concat ~sep:"\n" [s;b1;b2;b3], x)

let new_dec_or_bind (e : string) (f : float) : string * varname = 
  if Random.bool () then introduce_new_dec e f else mk_bind e
let new_dec_or_bind_custom (id : string) (e : string)  (f : float) =
  if Random.bool () then introduce_new_dec e f else mk_bind_custom id e
let new_dec_or_bind_custom_with_prs (id : string) (e : string)  (f : float) (pr : float) =
  if (Float.compare (Random.float 1.) pr) > 0 then introduce_new_dec_custom id e f else mk_bind_custom id e

(* Does method 1 for adding rewards 
  For each x in bound_vars, we create the clause
  var <- if x then [REWARD?] else [REWARD?]
  where [REWARD?] is described in the head of the file.
  all variables are conjoined to make the final expression. *)
let generate_clause (bv : varname) : string * varname = 
  let b1 = Random.int 100 in
  let b2 = Random.int 100 in
  match (b1 < 80, b2 < 30) with
  | (true, true) -> 
    let r1, r2 = mk_reward (), mk_reward () in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (true, false) -> 
    let r1, r2 = mk_reward (), "true" in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (false, true) ->
    let r1, r2 = "true", mk_reward () in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (false, false) ->
    ("", bv)
let method_1 (bound_vars : varname list) : string =
  let x = List.map bound_vars ~f:generate_clause in
  let clauses, bvs = List.unzip x in
  let final = String.concat ~sep:" && " bvs in
  String.concat ~sep:"\n" (List.append clauses [final])

(* Does method 2 for adding rewards
  We sample a random interpretation of the bound vars.
  We conjoin them together. Do this five times, then disjoin all.*)
let create_literal (v: varname) (b : bool) : varname = 
  if b then v else "!"^v
let generate_clause (bv : varname list) : string =
  let final : string list ref = ref [] in
  for _ = 0 to 5 do
    let x = List.map bv ~f:(fun _ -> Random.bool ()) in
    let z = List.zip_exn bv x in
    let y = List.map z ~f:(fun (a,b) -> create_literal a b) in
    let s = "( " ^ (String.concat ~sep:" && " y) ^ " )" in
    final := s :: !final
  done;
  String.concat ~sep:" || " !final

let method_2 (bound_vars : varname list) : string =
  let final : string ref = ref "" in
  let vnl = ref [] in
  for _ = 0 to 5 do
    let x = generate_clause bound_vars in
    let (str,var) = mk_bind x in
    let str' = mk_ite var [mk_reward () ; mk_reward()] in 
    let (str'', v) = mk_bind str' in 
    final := !final ^ str ^ "\n" ^ str'' ^ "\n";
    vnl := v ::(!vnl)
  done;
  !final  ^ (String.concat ~sep:" && " !vnl)