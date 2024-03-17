(* ANFs dappl to make semantics funfun *)

open Core_grammar
open Core

type ident =  Ident of string  

(* type aexpr = 
    And         of ident * ident
  | Or          of ident * ident
  | Xor         of ident * ident
  | Not         of ident * ident
  | Ite         of ident * ident
  | ChooseWith  of ident * (string * ident) list
  | Flip        of float
  | Reward      of float
  | Decision    of string list
  | Bind        of string * aexpr * aexpr
  | Observe     of aexpr * aexpr
  | Ident       of ident
  | Sequence    of expr * expr
  | Discrete    of (string * float) list
  | True
  | False
  *)

exception NotYetImplemented 

let rec flatten : expr -> expr = fun e -> 
  let (l, e) = flatten_h e in
  let squash = fun (x, b) e ->  Bind(x, b, e) in
  List.fold_right l ~f:squash ~init:e
and flatten_h : expr -> (string * expr) list * expr = function
| Bind(x, t1, t2) ->  
  let (l1, ft1) , (l2, ft2) = flatten_h t1, flatten_h t2 in
  (l1 @ [(x , ft1)] @ l2, ft2)
| x -> ([], x) 

let rec uniquify :  expr  -> expr = 
  let ct = ref 0 in 
  let fresh = fun _ -> 
    let n = Int.to_string !ct in 
    (ct := !ct + 1) ;
    "x"^n in  
  function
  | Bind(x, t1, t2) -> let nu = fresh () in Bind(nu, t1, uniquify (subst x nu t2)) 
  | x -> x 
and subst : string -> string -> expr -> expr = fun o n e ->
let subst' = subst o n in
  match e with
  | Ident k           -> if String.equal k o then Ident n  else Ident o 
  | And(x,y)          -> And ((subst' x),(subst' y))
  | Or(x,y)           -> Or ((subst' x),(subst' y))
  | Xor(x,y)          -> Xor ((subst' x),(subst' y))
  | Not x             -> Not (subst' x)
  | Ite(g, x, y)      -> Ite ((subst' g), (subst' x), (subst' y))
  | Bind(n, x, y)     -> Bind (n, (subst' x), (subst' y)) 
  | Observe(p, e)     -> Observe((subst' p), (subst' e))
  | Sequence(e, e')   -> Sequence((subst' e), (subst' e'))
  | ChooseWith(e, l)  -> ChooseWith((subst' e), List.map l ~f:(fun (a,b) -> (a, subst' b)))
  | x                 -> x


let rec anf : expr -> expr = 
  let ct = ref 0 in 
  let fresh = fun _ -> 
    let n = Int.to_string !ct in 
    (ct := !ct + 1) ; "anf"^n in 
  let squash = fun _ b e ->  Bind(fresh (), b, e) in
  function
  | _ -> raise NotYetImplemented 


