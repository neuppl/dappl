(* 
  Abstraction layer on top of rsdd-ocaml
  to make programming with it slightly easier
*)

open Rsdd
open Core_grammar
open Core
open Hashtbl
open Set

type eu = rsdd_expected_utility
type weight_fn = Std.Heap.create compare
type rw_set = Int64.Set.t

