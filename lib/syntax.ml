(**
   Public-facing grammar. This is the parser target.
*)

open Sexplib.Std

(* this syntax is a bit weird. it is necessary because Lexing.position does not
   by default derive sexp. *)
type lexing_position =
  Lexing.position =
  { pos_fname : string
  ; pos_lnum : int
  ; pos_bol : int
  ; pos_cnum : int
  }
[@@deriving sexp]

(** contains information necessary for referring to line numbers
   in the source file *)
type source = {startpos: lexing_position; endpos: lexing_position}
[@@deriving sexp_of]

(** core external grammar *)
type eexpr =
   (* [a1,...,an] *)
   Decision of source * (string list)
   (* choose e with | a_i -> e_i *)
   | ChooseWith of source * eexpr * ((string * eexpr) list)
   (* Boolean Operations *)
   | And of source * eexpr * eexpr
   | Or of source * eexpr * eexpr
   | Xor of source * eexpr * eexpr
   | Not of source * eexpr
   (* if e then e else e *)
   | Ite of source * eexpr * eexpr * eexpr
   (* reward k ; e *)
   | Reward of source * float * eexpr
   (* flip p *)
   | Flip of source * float
   (* x <- e ; e' *)
   | Bind of source * string * eexpr * eexpr
   (* observe P ; e *)
   | Observe of source * eexpr * eexpr
   (* return P *)
   | Return of source * eexpr
   (* discrete[ x_1 : p_1, ... x_n : p_n] *)
   | Discrete of source * (string * float) list
   (* loop n { e } *)
   | Loop of source * float * eexpr
   (* Atomic expressions *)
   | Ident of source * string
   | True of source
   | False of source
[@@deriving sexp_of]


(** top-level symbol *)
type program = { body: eexpr }
[@@deriving sexp_of]

exception Type_error of String.t


let gen_src =
  let gen_pos = { Lexing.dummy_pos with pos_fname = "<generated>" } in
  { startpos = gen_pos; endpos = gen_pos }