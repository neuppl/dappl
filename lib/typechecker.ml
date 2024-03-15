(* typecheck_hs a dappl program *) 

open Core_grammar
open Core
open Fun

type typ = | Bool_t | Rew_t | Choice_t of string list | Discrete_t of string list

let equal_typ = fun x y -> match x, y with
| Bool_t , Bool_t -> true
| Rew_t , Rew_t   -> true
| Choice_t(l), Choice_t(k) -> if (List.equal (String.equal) l k) then true else false
| _ -> false ;;

let typ_to_string = fun t -> match t with 
| Bool_t -> "Bool" | Rew_t -> "Reward" 
| Choice_t l -> List.to_string ~f:id l | Discrete_t l -> List.to_string ~f:id l;;

exception TypeError of string ;;
exception ConflictingVarNameError of string ;;
exception NonExhaustiveError of string ;;

type stringmap = (string, typ, Base.String.comparator_witness) Base.Map.t

let rec typecheck_h : expr -> stringmap -> typ = fun e s-> match e with 
| True -> Bool_t
| False -> Bool_t
| Flip _              ->  Bool_t
| Reward _            ->  Rew_t
| Decision l          ->  Choice_t l
| Discrete l          ->  Discrete_t (List.map l ~f:(fun (cat, pr) -> cat))
| Ident x             ->  Map.find_exn s x
| And (x,y)           ->  (match typecheck_h x s, typecheck_h y s with 
                          | Bool_t, Bool_t   -> Bool_t
                          | a,b              -> raise (TypeError 
                                                ("Expected Bools at AND, got "^(typ_to_string a)^" and "^(typ_to_string b))))  
| Or (x,y)            ->  (match typecheck_h x s, typecheck_h y s with 
                          | Bool_t, Bool_t -> Bool_t
                          | a,b            -> raise (TypeError 
                                                ("Expected Bools at OR, got "^(typ_to_string a)^" and "^(typ_to_string b))))
| Xor (x,y)          ->  (match typecheck_h x s, typecheck_h y s with 
                          | a,b            -> raise (TypeError 
                                                ("Expected Bools at XOR, got "^(typ_to_string a)^" and "^(typ_to_string b))))
| Not x             ->  (match typecheck_h x s with 
                        | Bool_t -> Bool_t 
                        | a      -> raise (TypeError ("Expected Bool at NOT, got "^(typ_to_string a))))
| Ite (x,y,z)       ->  (match typecheck_h x s with
                        | Bool_t -> if equal_typ (typecheck_h y s) (typecheck_h z s) then typecheck_h y s else 
                                    raise (TypeError "Expected ITE Branches to be of same type!")
                        | a      -> raise (TypeError ("Expected ITE guard to be Bool, got "^(typ_to_string a))))
| Bind (str, e, e') ->  let tp_e = typecheck_h e s in
                        let s' = try Map.add_exn s ~key:str ~data:tp_e with _ -> 
                          raise (ConflictingVarNameError ("You defined the variable "^str^" multiple times!")) in
                        typecheck_h e' s'
| Observe (e,e')    ->  let tp_e = typecheck_h e s in
                        (match tp_e with 
                        | Bool_t  -> typecheck_h e' s
                        | _       -> raise (TypeError ("Expected Bool in Observe, got "^(typ_to_string tp_e))))
| ChooseWith(e, l)  ->  let tp_e = typecheck_h e s in
                        (match tp_e with
                        | Choice_t k  ->
                          let (names, exprs) = List.unzip l in
                          let is_exhaustive = 
                            Set.equal (Set.of_list (module String) k) (Set.of_list (module String) names) in
                          if is_exhaustive then
                            let types = List.map ~f:(fun ex -> typecheck_h ex s) exprs in
                            let is_all_the_same_type = 
                              List.all_equal types ~equal:equal_typ in
                            (match is_all_the_same_type with 
                            | Some x -> x | None -> raise (TypeError "Expected Choose Branches to be of same type!"))
                          else raise (NonExhaustiveError "Branches of Choose is nonexhaustive!")
                        | Discrete_t k  ->
                          let (names, exprs) = List.unzip l in
                          let is_exhaustive = 
                            Set.equal (Set.of_list (module String) k) (Set.of_list (module String) names) in
                          if is_exhaustive then
                            let types = List.map ~f:(fun ex -> typecheck_h ex s) exprs in
                            let is_all_the_same_type = 
                              List.all_equal types ~equal:equal_typ in
                            (match is_all_the_same_type with 
                            | Some x -> x | None -> raise (TypeError "Expected Choose Branches to be of same type!"))
                          else raise (NonExhaustiveError "Branches of Choose is nonexhaustive!")
                        | a           -> raise (TypeError ("Expected Choose guard to be Bool, got "^(typ_to_string a))))
| _ -> raise (TypeError "")

let is_well_typed : expr -> unit = fun e ->
  let new_store : stringmap = Map.empty (module String) in
  let _ = typecheck_h e new_store in ()