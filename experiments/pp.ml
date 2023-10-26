(* Some pretty printing utilities.
  Two main functions:
  pp_dappl takes in a dappl AST and prints the relevant dappl program 
  pp_dtproblog takes in a dappl AST and prints the relevant problog program   
*)

open Dappl.Core_grammar
open Core
open Mk_expr_dt

let map_tab (s : string list) = List.map s ~f:(fun str -> "\t"^str)

let rec parenthesize_h (s : string list) (skip : bool) = 
  match s with
  | [] -> []
  | [x] -> if skip then [x ^ " )"] else ["( " ^ x ^ " )"]
  | x :: xs -> if skip then 
                parenthesize_h (x :: xs) true 
              else 
                let x = "( " ^ x in parenthesize_h (x :: xs) true
let parenthesize (s : string list) = parenthesize_h s false

let add ?(front = "") ?(back = "") (l : string list) = 
  match l with 
  | [] -> failwith "empty list"
  | x :: xs -> (String.concat ~sep:" " [front ; x; back]) :: xs               

let rec pp_dappl_h_bool (dappl : expr) : string = 
  match dappl with 
  | True                ->  "true"
  | False               ->  "false"
  | And (x,y)           ->  let x, y = pp_dappl_h_bool x, pp_dappl_h_bool y in 
                            String.concat ~sep:" " ["(" ; x ; ") && (" ; y ; ")"]
  | Or (x,y)            ->  let x, y = pp_dappl_h_bool x, pp_dappl_h_bool y in 
                            String.concat ~sep:" " ["(" ; x ; ") || (" ; y ; ")"]
  | Xor (x,y)           ->  let x, y = pp_dappl_h_bool x, pp_dappl_h_bool y in 
                            String.concat ~sep:" " ["(" ; x ; ") ^ (" ; y ; ")"]
  | Not x               ->  String.concat ~sep:" " ["!(" ; pp_dappl_h_bool x; ")"]
  | _                   ->  failwith "stepped into Bool case illegally in pp"
and pp_dappl_h (dappl : expr) : string list =
  match dappl with
  | Ite (x,y,z)         ->  let x = parenthesize (pp_dappl_h x) in
                            let y = map_tab (parenthesize (pp_dappl_h y)) in 
                            let z = map_tab (parenthesize (pp_dappl_h z)) in
                            (add ~front:"if" x) @ ["then"] @ y @ ["else"] @ z
  | ChooseWith (d, l)   ->  let d = pp_dappl_h d in
                            let (s, e) = List.unzip l in
                            let e = List.map e ~f:pp_dappl_h in
                            let zip_fn =  fun (s, e) -> match e with
                                          | [] -> failwith "syntactically incorrect!!"
                                          | x :: xs -> let s' = "| " ^ s ^ " -> " ^ x in s' :: xs in
                            let final = List.map (List.zip_exn s e) ~f:zip_fn in
                            (add ~front:"choose" ~back:"with" d) @ List.concat final
  | Flip n              ->  ["flip " ^ Bignum.to_string_hum ~decimals:5 n]
  | Reward k            ->  ["reward " ^ Bignum.to_string_hum ~decimals:5 k]
  | Decision l          ->  let s = String.concat ~sep:", " l in
                            add ~front:"[" ~back:"]" [s]
  | Bind (s, e, e')     ->  let x, y = pp_dappl_h e, pp_dappl_h e' in
                            let x = add ~front:(s ^ " <- ") ~back:";" x in
                            x @ y
  | Observe (e , e')    ->  let x, y = pp_dappl_h e, pp_dappl_h e' in
                            let x = add ~front:" observe (" ~back:");" x in
                            x @ y
  | Sequence(e, e')     ->  let x, y = pp_dappl_h e, pp_dappl_h e' in
                            let x = add ~back:";" x in
                            x @ y
  | Ident x             ->  [x]
  | e                   ->  [pp_dappl_h_bool e]

let pp_dappl (dappl : expr) = String.concat ~sep:"\n" (pp_dappl_h dappl)

let pp_dtproblog_h_bool (dappl : expr) : string = 
  match dappl with 
  | True                ->  "true"
  | False               ->  "false"
  | And (_x,_y)           ->  failwith "TODO"
  | Or (_x,_y)            ->  failwith "TODO"
  | Xor (_x,_y)           ->  failwith "TODO"
  | Not _x               ->  failwith "TODO"
  | _                   ->  failwith "TODO"
and pp_dtproblog_h (dappl : expr) (_seen : literal list): clause list =
  match dappl with
  | Ite (_x,_y,_z)         ->  failwith "TODO"
  | ChooseWith (_d, _l)   ->  failwith "TODO"
  | Flip _n              ->  failwith "TODO"
  | Reward _k            ->  failwith "TODO"
  | Decision _l          ->  failwith "TODO"
  | Bind (_s, _e, _e')     ->  failwith "TODO"
  | Observe (_e , _e')    ->  failwith "TODO"
  | Sequence(_e, _e')     ->  failwith "TODO"
  | Ident _x             ->  failwith "TODO"
  | _e                   ->  failwith "TODO"

let pp_dtproblog (dappl : expr) = print_program (pp_dtproblog_h dappl [])
