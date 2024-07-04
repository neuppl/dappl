(*
  Pretty prints the dappl ast. Designed to be round-trippable.
*)

open Dappl.Core_grammar
open Core
open SmartPrint

let rec pp_bool (dappl : expr) : SmartPrint.t =
  match dappl with
  | True                ->  !^ "tt"
  | False               ->  !^ "ff"
  | And (x,y)           ->  parens ((pp x) ^^ (!^ "&&") ^^ (pp y))
  | Or (x,y)            ->  parens ((pp x) ^^ (!^ "||") ^^ (pp y))
  | Xor (x,y)           ->  parens ((pp x) ^^ (!^ "^") ^^ (pp y))
  | Not x               ->  parens (!^ "!" ^^ pp x)
  | _                   ->  failwith "stepped into Bool case illegally in pp"
and pp (dappl : expr) : SmartPrint.t =
  match dappl with
  | Ite (x,y,z)         ->  nest(
                              !^ "if" ^^ pp x ^^ !^ "then" ^^ newline ^^
                                indent(parens(pp y)) ^^ newline ^^
                              !^ "else" ^^ newline ^^
                                indent(parens(pp z))
                            )
  | ChooseWith (d, l)   ->  nest(
                              !^ "choose" ^^ pp d ^^ !^ "with " ^^ newline ^^
                              pp_choosewith l
                            )
  | Flip n              ->  !^"flip" ^^ OCaml.float n
  | Reward (k, e)       ->  !^"reward" ^^ OCaml.float k ^-^ !^ ";" ^^ (pp e)
  | Decision l          ->  brakets (separate (!^ " , ") (List.map l ~f:string))
  | Observe (e , e')    ->  !^"observe" ^^ parens(pp e) ^^ !^";" ^^ newline ^^ pp e'
  | Ident x             ->  !^x
  | Return x            ->  !^"return" ^^ parens (pp x)
  | Bind(s, e, e')      ->  !^s ^^ !^"<-" ^^ parens(pp e) ^^ !^";" ^^ newline ^^ (pp e')
  | Discrete l          ->  !^"discrete" ^-^ brakets(pp_discrete l)
  | Loop (n, e)         ->  !^"loop" ^^ OCaml.int n ^^ braces(
                              newline ^-^ indent(pp e) ^-^ newline)
  | True | False | And(_,_) | Or(_,_) | Xor(_,_) | Not(_)
                        ->  pp_bool dappl
and pp_choosewith (l : (string * expr) list) : SmartPrint.t =
  let l' = List.map l ~f:(fun (s,e) ->  !^"|" ^^ !^s ^^ !^ "->" ^^ newline ^^ indent(parens(pp e))) in
  separate newline l'
and pp_discrete (l : (string * float) list) : SmartPrint.t =
  let l' = List.map l ~f:(fun (s,f) -> !^s ^^ !^ ":" ^^ OCaml.float f) in
  separate !^" , " l'

let to_stdout (dappl : expr) : unit =
  to_stdout 100 2 (pp dappl ^^ newline)
let to_channel c dappl : unit =
  to_out_channel 100 2 c (pp dappl)