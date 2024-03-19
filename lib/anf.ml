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

let rec anf : expr -> expr = fun e ->
  let (l, e)       = anf_h e in
  let (l', e')     = anf_hh e in
  let squash       = fun _ (s,b) e ->  Bind(s , b, e) in
  List.fold_right (l@l') ~f:(squash ()) ~init:e
and anf_h : expr -> (string * expr) list * expr = 
  let ct = ref 0 in 
  let fresh = fun _ -> 
    let n = Int.to_string !ct in 
    (ct := !ct + 1) ; "anf"^n in
  function
  | And(x,y)          ->  (match is_value x, is_value y with
                          | true, true -> ([], And(x,y))
                          | false, false -> 
                            let new1, new2 = fresh (), fresh () in 
                            let (lx, ex) , (ly, ey) = anf_h x, anf_h y in
                            let new_and = And(Ident(new1), Ident(new2)) in
                            (lx @ [(new1, ex)] @ ly @ [(new2, ey)], new_and)
                          | false, true -> 
                            let new1 = fresh () in 
                            let (lx, ex) = anf_h x in
                            let new_and = And(Ident(new1), y) in
                            (lx @ [(new1, ex)] , new_and)
                          | true, false -> 
                            let new2 = fresh () in 
                            let (ly, ey) = anf_h y in
                            let new_and = And(x, Ident(new2)) in
                            (ly @ [(new2, ey)], new_and))
  | Or(x,y)           ->  (match is_value x, is_value y with
                          | true, true -> ([], Or(x,y))
                          | false, false -> 
                            let new1, new2 = fresh (), fresh () in 
                            let (lx, ex) , (ly, ey) = anf_h x, anf_h y in
                            let new_and = Or(Ident(new1), Ident(new2)) in
                            (lx @ [(new1, ex)] @ ly @ [(new2, ey)], new_and)
                          | false, true -> 
                            let new1 = fresh () in 
                            let (lx, ex) = anf_h x in
                            let new_and = Or(Ident(new1), y) in
                            (lx @ [(new1, ex)] , new_and)
                          | true, false -> 
                            let new2 = fresh () in 
                            let (ly, ey) = anf_h y in
                            let new_and = Or(x, Ident(new2)) in
                            (ly @ [(new2, ey)], new_and))
  | Xor(x,y)          ->  (match is_value x, is_value y with
                          | true, true -> ([], Xor(x,y))
                          | false, false -> 
                            let new1, new2 = fresh (), fresh () in 
                            let (lx, ex) , (ly, ey) = anf_h x, anf_h y in
                            let new_and = Xor(Ident(new1), Ident(new2)) in
                            (lx @ [(new1, ex)] @ ly @ [(new2, ey)], new_and)
                          | false, true -> 
                            let new1 = fresh () in 
                            let (lx, ex) = anf_h x in
                            let new_and = Xor(Ident(new1), y) in
                            (lx @ [(new1, ex)] , new_and)
                          | true, false -> 
                            let new2 = fresh () in 
                            let (ly, ey) = anf_h y in
                            let new_and = Xor(x, Ident(new2)) in
                            (ly @ [(new2, ey)], new_and))
  | Not x             ->  if is_value x 
                          then ([], Not x) 
                          else
                            let new1 = fresh () in 
                            let (lx, ex) = anf_h x in
                            let new_not = Not(Ident(new1)) in
                            (lx @ [(new1, ex)], new_not)
  | Ite(g, x, y)      ->  let new1, new2, new3 = fresh (), fresh (), fresh () in 
                          let (lg, eg), (lx, ex), (ly, ey) = anf_h g , anf_h x, anf_h y in
                          let new_if = Ite(Ident(new1), Ident(new2), Ident(new3)) in
                          (lg @ [(new1, eg)] @ lx @ [(new2, ex)] @ ly @ [(new3, ey)], new_if)
  | Bind(n, x, y)     ->  let (lx, ex), (ly, ey) = anf_h x, anf_h y in  
                          (lx @ [(n, ex)] @ ly, ey)
  | Observe(p, e)     ->  let (lp, ep), (le, ee) = anf_h p, anf_h e in
                          let new1, new2 = fresh (), fresh () in
                          (lp @ [(new1, ep)] @ le @ [(new2, ee)], Observe(Ident(new1), Ident(new2)))
  | Sequence(e, e')   ->  let (lp, ep), (le, ee) = anf_h e, anf_h e' in
                          let new1, new2 = fresh (), fresh () in
                          (lp @ [(new1, ep)] @ le @ [(new2, ee)], Sequence(Ident(new1), Ident(new2)))
  | ChooseWith(e, l)  ->  let (le, ee) = anf_h e in
                          let newdec = fresh () in
                          let (names, anfs) = List.unzip (List.map l ~f:(fun (n,k) -> (n, anf_h k))) in
                          let (newvars, returns) = List.unzip anfs in
                          let newnames = List.init (List.length l) ~f:(fun _ -> fresh ()) in
                          let new_choose = ChooseWith (Ident newdec, List.zip_exn names (List.map newnames ~f:(fun x -> Ident x))) in
                          let newasdf = List.zip_exn newnames returns in
                          let interpd = interpolate newvars newasdf in
                          (le @ [(newdec, ee)] @ interpd, new_choose)
  | x                 ->  ([], x)
and interpolate : 'a list list -> 'a list -> 'a list = fun ll l ->
match ll, l with
| (x :: xs), (y :: ys)  -> x @ [y] @ (interpolate xs ys)
| [] , []               -> []
| _                     -> failwith "Wrong Lengths!"


