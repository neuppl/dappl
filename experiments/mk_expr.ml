(* This file defines utilities to generate dappl strings. *)

open Random
open Core
open OUnit2

(* We make variable names via a ref count. *)
type var = Flip | Choice | Decision | Else
type varname = string
let ct = ref 0 ;;

let mk_varname (x : var) : varname = 
  let v = Int.to_string !ct in
  let _ : unit = ct := !ct + 1 in
  match x with
  | Flip      -> "f" ^ v 
  | Choice    -> "c" ^ v
  | Decision  -> "d" ^ v
  | Else      -> "b" ^ v    

(* Produces an expression reward k. IS LAZY FOR A REASON!!! *)
let mk_reward (_ : unit) : string = 
  let x = Int.to_string (int 100) in 
  String.concat ~sep:" " ["reward" ; x]
let mk_reward_det (x : int) : string =  
  String.concat ~sep:" " ["reward" ; Int.to_string x]

(* produces an expression x <- (flip f); IS LAZY FOR A REASON!!! *)
let mk_flip (_ : unit): string * varname = 
  let v = mk_varname Flip in
  let f = Float.to_string (Random.float 1.) in
  (String.concat ~sep:" " [v; "<-"; "("; "flip"; f ; ");"], v)
let mk_flip_det (f : float): string * varname = 
  let v = mk_varname Flip in
  (String.concat ~sep:" " [v; "<-"; "("; "flip"; Float.to_string f ; ");"], v)
let mk_flip_print (_ : unit): unit =
  let (s,_) = mk_flip () in 
  Printf.printf "%s\n" s

(* produces an expression x <- [c1, ... cn]; *)
let mk_dec (i : int) : string * varname * varname list = 
  let l = List.init i ~f:(fun _ -> mk_varname Choice) in
  let d = mk_varname Decision in
  let str_of_choices = String.concat ~sep:", " l in
  (String.concat ~sep:" " [d; "<-"; "["; str_of_choices; "];"], d, l)

let mk_dec_print (i : int) : unit =
  let (s, _, _) = mk_dec i in 
  Printf.printf "%s\n" s

(* Produces a choosewith *)
let mk_choosewith (d : varname) (l : varname list) (e : string list) : string =
  let _ : unit = assert_bool "dude. length mismatch in choosewith."
          (List.length l = List.length e) in
  let s = String.concat ~sep:" " ["choose" ; d ; "with"] in
  let fn = fun (a,b) -> String.concat ~sep:" " ["|" ; a ; "->" ; "("; b; ")"] in
  let l2 = List.map (List.zip_exn l e) ~f:fn in
  let l = List.cons s l2 in
  String.concat ~sep:"\n" l

let mk_choosewith_print (d : varname) (l : varname list) (e : string list) = 
  let s = mk_choosewith d l e in 
  Printf.printf "%s\n" s

(* Produces an ite *)

let mk_ite (f : varname) (e : string list) : string = 
  let _ : unit = assert_bool "dude, have two conditions for an ite. cmon that's CS0 shit"
          (List.length e = 2) in
  let parenthesize = fun s -> String.concat ~sep:" " ["(" ; s ; ")"] in
  let l' = List.map e ~f:parenthesize in 
  String.concat ~sep:" " ["if ("; f; ") then"; List.nth_exn l' 0; "else"; List.nth_exn l' 1]

let mk_ite_print (f : varname) (e : string list) =
  Printf.printf "%s\n" (mk_ite f e)

(* Produces an observe *)
let mk_observe (event : varname) : string = 
  String.concat ~sep:" " ["observe(" ; event ; ");"]

let mk_observe_print (event : varname) = 
  Printf.printf "%s\n" (mk_observe event)

(* Produces an expression x <- expr *)
let mk_bind (e : string) : (string * varname) = 
  let x = mk_varname Else in
  let expr = String.concat ~sep:" " [x ; "<-" ;"("; e ; ");"] in
  (expr, x)
