(* ANFs dappl to make semantics funfun *)

open Core_grammar
open Core
(* open Pp *)

exception NotYetImplemented 

let rec flatten : expr -> expr = fun e -> 
  let (l, e) = flatten_h e in
  let squash = fun (x, b) e ->  Bind(x, b, e) in
  List.fold_right l ~f:squash ~init:e
and flatten_h : expr -> (string * expr) list * expr = function
| Bind(x, t1, t2) ->  
  let (l1, ft1) , (l2, ft2) = flatten_h t1, flatten_h t2 in
  (l1 @ [(x , ft1)] @ l2, ft2)
| And(t1, t2)     -> 
  let (l1, ft1), (l2, ft2) = flatten_h t1, flatten_h t2 in 
  (l1 @ l2, And(ft1, ft2))
| x -> ([], x) 

let rec uniquify : expr -> expr = fun e -> uniquify_h e 0
and uniquify_h :  expr -> int -> expr = fun e n ->
  (* Printf.printf "%s\n\n" (pp_dappl e); *)
  match e with
  | Bind(x, t1, t2) ->  let nu = x^(Int.to_string n) in 
                        let t2' = subst x nu t2 in
                        
                        Bind(nu, t1, uniquify_h t2' (n+1)) 
  | x -> x 
and subst : string -> string -> expr -> expr = fun og n e ->
  match e with
  | Ident k           -> if String.equal k og then Ident n else Ident k
  | And(x,y)          -> And ((subst og n x),(subst og n y))
  | Or(x,y)           -> Or ((subst og n x),(subst og n y))
  | Xor(x,y)          -> Xor ((subst og n x),(subst og n y))
  | Not x             -> Not (subst og n x)
  | Ite(g, x, y)      -> Ite ((subst og n g), (subst og n x), (subst og n y))
  | Bind(m, x, y)     -> Bind (m, (subst og n x), (subst og n y)) 
  | Observe(p, e)     -> Observe((subst og n p), (subst og n e))
  | Sequence(e, e')   -> Sequence((subst og n e), (subst og n e'))
  | ChooseWith(e, l)  -> ChooseWith((subst og n e), List.map l ~f:(fun (a,b) -> (a, subst og n b)))
  | x                 -> x

let is_value : expr -> bool = function
| True | False  -> true
| Ident _       -> true
| _             -> false

let ct = ref (-1)

let fresh () = (ct := !ct + 1) ;  "var_"^(Int.to_string !ct)
let newlet () e1 e2 = let n = fresh () in Bind(n, e1, e2)
let newlet_id () e f = let n = fresh () in Bind(n, e, f (Ident(n))) 

let rec anf_h : expr -> (expr -> expr) -> expr = fun e lambda -> match e with
(* Base Cases *)
| True                  ->  lambda True
| False                 ->  lambda False
| Ident k               ->  lambda (Ident k)
(* exp --> let new_var = exp in new_var *)
| Flip  f               ->  newlet_id () (Flip f) lambda
| Reward k              ->  newlet_id () (Reward k) lambda
| Decision l            ->  newlet_id () (Decision l) lambda
| Discrete l            ->  newlet_id () (Discrete l) lambda
| And (x,y)             ->  anf_h x (fun lft ->
                              anf_h y (fun rgt ->
                                newlet_id () (And(lft, rgt)) lambda
                            ))
| Or (x,y)              ->  anf_h x (fun lft ->
                              anf_h y (fun rgt ->
                                newlet_id () (Or(lft, rgt)) lambda
                            ))
| Xor (x,y)              -> anf_h x (fun lft ->
                              anf_h y (fun rgt ->
                                newlet_id () (Xor(lft, rgt)) lambda
                            ))
| Not x                 ->  anf_h x (fun i ->
                              newlet_id () (Not i) lambda)
| Ite (g, t, e)         ->  anf_h g (fun gd ->
                              anf_h t (fun thn ->
                                anf_h e (fun els ->
                                  newlet_id () (Ite(gd, thn, els)) lambda
                            )))
(* TODO: Check this case *)
| Observe (b, e)        ->  anf_h b (fun obs ->
                              anf_h e (fun rst ->
                                lambda (Observe (obs,rst))))
| Bind (s, b, e)        ->  anf_h b (fun bd ->
                              Bind(s, bd, anf_h e lambda))
| Sequence (f, n)       ->  anf_h f (fun fs ->
                              anf_h n (fun nx ->
                                newlet_id () (Sequence(fs, nx)) lambda
                            ))
(* TODO: Check this case *)
| ChooseWith (e, l)     ->  let rec fold_fn = fun ct a k -> match ct with
                                              | ChooseWith(x,l) -> ChooseWith(x, l @ [(a,k)])
                                              | Bind(x,y,l)     -> Bind(x,y, fold_fn l a k)
                                              | _               -> failwith "error!"          in
                            let x = fun d -> List.fold_right l 
                              ~init:(ChooseWith(d, []))
                              ~f:(fun (a,b) ct  -> anf_h b (fold_fn ct a)) in 
                            flatten (anf_h e (fun k -> newlet_id () (x k) lambda))
and anf : expr -> expr = fun e -> anf_h e (fun x -> x)
                        
