(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

(* open Rsdd
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
  | Not x               ->  let (e, l) = bc x bdd in
                            (cf_not bdd e, l)
  | Ite (x,y,z)         ->  let (ex, lx) = bc x bdd in 
                            let (ey, ly) = bc y bdd in
                            let (ez, lz) = bc z bdd in
                            (cf_ite bdd ex ey ez, List.append lx (List.append ly lz))
  | ChooseWith (_d, _l) ->  failwith "todo"
  | Flip n              ->  let k = Bignum.to_float n in
                            let e = mk_newvar bdd ((1.0 -. k, 0.0), (k, 0.0)) in
                            
                            (e, [])
  | Reward k            ->  let k = Bignum.to_float k in
                            let e = mk_newvar bdd ((1.0, 0.0), (1.0, k)) in
                            (e, [])
  | Decision l          ->  failwith "todo"
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
  extract meu *)
