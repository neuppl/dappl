(** Contains the internal core grammar for the discrete language *)
open Sexplib.Std

(** core grammar type *)
type expr =
    And         of expr * expr
  | Or          of expr * expr
  | Xor         of expr * expr
  | Not         of expr
  | Ite         of expr * expr * expr
  | ChooseWith  of expr * (string * expr) list
  | Flip        of float
  | Reward      of float * expr
  | Decision    of string list
  | Bind        of string * expr * expr
  | Observe     of expr * expr
  | Ident       of string
  | Return      of expr
  | Discrete    of (string * float) list
  | Loop        of int * expr
  | True
  | False
[@@deriving sexp_of]

(** top-level symbol *)
type program = { body: expr }
[@@deriving sexp_of]

(** convert an expression in the external grammar into one in the internal grammar *)
let rec from_external_expr (e: Syntax.eexpr) =
  let f = from_external_expr in
  match e with
  | And(_, e1, e2)      -> And(f e1, f e2)
  | Or(_, e1, e2)       -> Or(f e1, f e2)
  | Xor(_, e1, e2)      -> Xor(f e1, f e2)
  | Not(_, e)           -> Not(f e)
  | Ite(_, g, thn, els) -> Ite(f g, f thn, f els)
  | ChooseWith (_, d, l)   -> let fmap = fun (x,y) -> (x, f y) in
                           let map : (string * expr) list= List.map fmap l in
                           ChooseWith(f d , map)
  | Flip(_, n)          -> Flip(n)
  | Reward(_, k, e)     -> Reward(k, f e)
  | Decision(_, l)      -> Decision(l)
  | Observe(_, e, e')   -> Observe(f e, f e')
  | Bind(_, x, e1, e2)  -> Bind(x, f e1, f e2)
  | Return(_, p)        -> Return(f p)
  | Discrete(_, l)      -> Discrete l
  | Loop(_, i, e)       -> Loop(Float.to_int i, f e)
  | Ident(_, x)         -> Ident(x)
  | True _              -> True
  | False _             -> False

(** convert an external program into a core program *)
let from_external_program (e: Syntax.program) = { body = (from_external_expr e.body) }