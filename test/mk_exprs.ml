(* This file defines utilities to generate dappl strings. *)

open Random
open OUnit2

(* We make variable names via a ref count. *)
type var = Flip | Choice | Decision
type varname = string
let ct = ref 0 ;;

let mk_varname (x : var) : varname = 
  let v = Int.to_string !ct in
  let _ = ct := !ct + 1 in
  match x with
  | Flip -> String.cat "f" v 
  | Choice -> String.cat "c" v
  | Decision -> String.cat "d" v

(* Produces an expression reward k. IS LAZY FOR A REASON!!! *)
let mk_reward (_ : unit) : string = 
  let x = Int.to_string (int 100) in 
  String.concat " " ["reward" ; x]

(* produces an expression x <- (flip f); IS LAZY FOR A REASON!!! *)
let mk_flip (_ : unit): string * varname = 
  let v = mk_varname Flip in
  let f = Float.to_string (float 1.) in
  (String.concat " " [v; "<-"; "("; "flip"; f ; ");"], v)

let mk_flip_print (_ : unit): unit =
  let (s,_) = mk_flip () in 
  Printf.printf "%s\n" s

(* produces an expression x <- [c1, ... cn]; *)
let mk_dec (i : int) : string * varname * varname list = 
  let l = List.init i (fun _ -> mk_varname Choice) in
  let d = mk_varname Decision in
  let str_of_choices = String.concat ", " l in
  (String.concat " " [d; "<-"; "["; str_of_choices; "];"], d, l)

let mk_dec_print (i : int) : unit =
  let (s, _, _) = mk_dec i in 
  Printf.printf "%s\n" s

(* Produces a choosewith *)
let mk_choosewith (d : varname) (l : varname list) (e : string list) : string =
  let _ = assert_bool "dude. length mismatch in choosewith."
          (List.length l = List.length e) in
  let s = String.concat " " ["choose" ; d ; "with"] in
  let fn = fun (a,b) -> String.concat " " ["|" ; a ; "->" ; "("; b; ")"] in
  let l2 = List.map fn (List.combine l e) in
  let l = List.cons s l2 in
  String.concat "\n" l

let mk_choosewith_print (d : varname) (l : varname list) (e : string list) = 
  let s = mk_choosewith d l e in 
  Printf.printf "%s\n" s

(* Produces an ite *)

let mk_ite (f : varname) (e : string list) : string = 
  let _ = assert_bool "dude, have two conditions for an ite. cmon that's CS0 shit"
          (List.length e = 2) in
  let parenthesize = fun s -> String.concat " " ["(" ; s ; ")"] in
  let l' = List.map parenthesize e in 
  String.concat " " ["if"; f; "then"; List.nth l' 0; "else"; List.nth l' 1]

let mk_ite_print (f : varname) (e : string list) =
  Printf.printf "%s\n" (mk_ite f e)

  
