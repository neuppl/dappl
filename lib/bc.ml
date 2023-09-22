(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

open Rsdd
(* open Core_grammar *)
open Core

type eu = rsdd_expected_utility
type weight_fn = (int64 * eu * eu) list

type cf = 
{
  builder : rsdd_bdd_builder;
  unn : rsdd_bdd_ptr;
  acc : rsdd_bdd_ptr;
  fn : weight_fn ;
  rw : Int64.Set.t
}





