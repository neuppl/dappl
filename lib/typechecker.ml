(* typechecks a dappl program *) 

open Core_grammar
open Core
open Fun

type typ = Bool_t | MBool_t |Choice_t of string list

let equal_typ = fun x y -> match x, y with
| Bool_t , Bool_t -> true
| MBool_t, MBool_t -> true
| Choice_t(l), Choice_t(k) -> if (List.equal (String.equal) l k) then true else false
| _ -> false

let typ_to_string = fun t -> match t with 
| Bool_t -> "Bool"
| MBool_t -> "M Bool"
| Choice_t l -> List.to_string ~f:id l

exception TypeError of string ;;
exception ConflictingVarNameError of string ;;
exception UnboundVariableError of string
exception NonExhaustiveError of string ;;

type stringmap = (string, typ, String.comparator_witness) Map.t

let rec is_well_typed : expr -> unit = fun e ->
  let new_store : stringmap = Map.empty (module String) in
  let _ = typecheck e new_store in ()
and typecheck : expr -> stringmap -> typ = fun e s -> match e with 
| True | False      ->  Bool_t
| Ident x           ->  (match (Map.find s x) with Some t -> t | None -> raise (UnboundVariableError x))
| Flip _            ->  MBool_t
| Decision l        ->  Choice_t l
| Reward (_ , e)    ->  typecheck e s 
| Return x          ->  let typ_e = typecheck x s in 
                        if (equal_typ typ_e Bool_t) 
                        then Bool_t 
                        else raise (TypeError (
                          "Expected pure expression in Return, got "^(typ_to_string typ_e)))
| And(x , y)        ->  let typ_x, typ_y = typecheck x s , typecheck y s in
                        if (equal_typ typ_x Bool_t && equal_typ typ_y Bool_t) 
                        then Bool_t
                        else raise (TypeError (
                          "Expected Booleans in AND, got "^(typ_to_string typ_x)^" and "^(typ_to_string typ_y)))
| Or(x , y)         ->  let typ_x, typ_y = typecheck x s , typecheck y s in
                        if (equal_typ typ_x Bool_t && equal_typ typ_y Bool_t) 
                        then Bool_t
                        else raise (TypeError (
                          "Expected Booleans in OR, got "^(typ_to_string typ_x)^" and "^(typ_to_string typ_y)))
| Xor(x , y)        ->  let typ_x, typ_y = typecheck x s , typecheck y s in
                        if (equal_typ typ_x Bool_t && equal_typ typ_y Bool_t) 
                        then Bool_t
                        else raise (TypeError (
                          "Expected Booleans in OR, got "^(typ_to_string typ_x)^" and "^(typ_to_string typ_y)))
| Not x             ->  let typ_x = typecheck x s in
                        if equal_typ typ_x Bool_t
                        then Bool_t
                        else raise (TypeError (
                          "Expected Boolean in NOT, got "^(typ_to_string typ_x)))
| Ite (g, t, e)     ->  let typ_g         = typecheck g s in
                        let typ_t, typ_e  = typecheck t s, typecheck e s in
                        (match typ_g with
                        | MBool_t   -> 
                          raise (TypeError (
                            "Expected Bool_t as if guard, got "^(typ_to_string typ_g)))
                        | Bool_t    -> 
                          (if equal_typ typ_t typ_e 
                          then typ_t 
                          else raise (TypeError (
                            "Branches of ITE do not match, got "
                            ^(typ_to_string typ_t)^" and "^(typ_to_string typ_e))))
                        | Choice_t l -> 
                          if (List.length l > 1) 
                          then raise (TypeError (
                            "Expected a decision of 1 variable as if guard, 
                            got "^(Int.to_string (List.length l))))
                          else 
                            (if equal_typ typ_t typ_e 
                            then typ_t 
                            else raise (TypeError (
                              "Branches of ITE do not match, got "
                              ^(typ_to_string typ_t)^" and "^(typ_to_string typ_e)))))
| Observe (b, e)    ->  let typ_b = typecheck b s in 
                        if (equal_typ typ_b Bool_t)
                        then typecheck e s
                        else raise (TypeError (
                          "Expected Bool_t as Observed event, got "^(typ_to_string typ_b)))
| Bind (x, e, e')   ->  let typ_e = typecheck e s in
                        if (equal_typ typ_e MBool_t)
                        then 
                          let s'    = Map.add s ~key:x ~data:Bool_t in
                          (match s' with 
                          | `Ok s'      -> typecheck e' s'
                          | `Duplicate  -> raise (
                              ConflictingVarNameError ("Repeated Variable Name: "^x)))
                        else 
                          let s'    = Map.add s ~key:x ~data:typ_e in
                          (match s' with 
                          | `Ok s'      -> typecheck e' s'
                          | `Duplicate  -> raise (
                              ConflictingVarNameError ("Repeated Variable Name: "^x)))
| ChooseWith(e, l)  ->  let tp_e  = typecheck e s in
                        (match tp_e with
                        | Choice_t k  ->
                          let (names, exprs)  = List.unzip l in
                          let is_exhaustive   = 
                            Set.equal (Set.of_list (module String) k) (Set.of_list (module String) names) in
                          if is_exhaustive then
                            let types = List.map ~f:(fun ex -> typecheck ex s) exprs in
                            let is_all_the_same_type = 
                              List.all_equal types ~equal:equal_typ in
                            (match is_all_the_same_type with 
                            | Some x -> x | None -> raise (TypeError 
                              "Expected Choose Branches to be of same type!"))
                          else raise (NonExhaustiveError 
                              "Branches of Choose is nonexhaustive!")
                        | a           -> raise (TypeError (
                              "Expected Choose guard to be Choice_t, got "^(typ_to_string a))))
