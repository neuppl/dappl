(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Rsdd_abstractions

let rec bc (dappl : expr) (bdd : rsdd_bdd_builder) : cf * rsdd_var_label list = 
  match dappl with 
  | True                ->  (t bdd, [])
  | False               ->  (f bdd, [])
  | And (x,y)           ->  let (e1, l1) = bc x bdd in 
                            let (e2, l2) = bc y bdd in 
                            (cf_and bdd e1 e2, List.append l1 l2)
  | Or (x,y)            ->  let (e1, l1) = bc x bdd in 
                            let (e2, l2) = bc y bdd in 
                            (cf_or bdd e1 e2, List.append l1 l2)
  | Not _x              ->  failwith "todo"
  | Ite (_x,_y,_z)      ->failwith "todo"
  | ChooseWith (_d, _l) ->failwith "todo"
  | Flip _n             -> failwith "todo"
  | Reward _k           -> failwith "todo"
  | Decision _l         -> failwith "todo"
  | Bind (_s, _e, _e')  -> failwith "todo"
  | Observe (_e,_e')    -> failwith "todo"
  | Ident _x            -> failwith "todo"
  | Sequence(_e, _e')   -> failwith "todo"

let infer (prog :program) : float * float = 
  let new_bdd = mk_bdd_builder_default_order 0L in
  let (cf, decisions) = bc prog.body new_bdd in 
  let decisions_len :int64 = Int64.of_int(List.length (decisions)) in
  (* I really dislike this hack I did to make the weight function into a 
    valid wmc parameter. But it works and it's decently fast...
    in hindsight I should have probably used a priority queue, but whatevs *)
  let sorted_weight_fn = List.sort cf.fn ~compare:(fun x y -> Int64.compare (fst x) (fst y))  in 
  let wmc_map = List.map sorted_weight_fn ~f:(fun x -> snd x) in
  let wmcparam = new_wmc_params_eu wmc_map in
  let unn_and_acc = bdd_and new_bdd cf.unn cf.acc in
  let (meu, _) = bdd_meu unn_and_acc cf.acc decisions decisions_len wmcparam in 
  extract meu
