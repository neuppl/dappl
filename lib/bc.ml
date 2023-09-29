(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Rsdd_abstractions

(* We maintain an association list of strings and VarLabels 
  to enforce exhaustive patternmatch in ChooseWith. *)

let dlist : ((string * rsdd_var_label) list) ref = ref [];;

let rec bc (dappl : expr) (bdd : rsdd_bdd_builder) : cf = 
  match dappl with 
  | True                ->  t bdd
  | False               ->  f bdd
  | And (x,y)           ->  let e1 = bc x bdd in 
                            let e2 = bc y bdd in 
                            cf_and bdd e1 e2
  | Or (x,y)            ->  let e1 = bc x bdd in 
                            let e2 = bc y bdd in 
                            cf_or bdd e1 e2
  | Not x               ->  let e = bc x bdd in
                            cf_not bdd e
  | Ite (x,y,z)         ->  let ex = bc x bdd in 
                            let ey = bc y bdd in
                            let ez = bc z bdd in
                            cf_ite bdd ex ey ez
  | ChooseWith (d, l)   ->  let _ed = bc d bdd in 
                            let _l_of_behaviors = List.map l ~f:(fun (a,b) -> (a, bc b bdd)) in 
                            failwith "todo"
                            (* for (a,b) in l_of_behaviors *)
  | Flip n              ->  let k = Bignum.to_float n in
                            mk_newvar_prob bdd k
  | Reward k            ->  let k = Bignum.to_float k in
                            mk_newvar_rew bdd k
  | Decision l          ->  let (e, l) = mk_newvar_dec bdd l in 
                            let _ = dlist := List.append !dlist l in 
                            e
  | Bind (_s, _e, _e')  ->  failwith "todo"
  | Observe (_e,_e')    ->  failwith "todo"
  | Ident _x            ->  failwith "todo"
  | Sequence(_e, _e')   ->  failwith "todo"

let infer (prog :program) : float * float = 
  let new_bdd = mk_bdd_builder_default_order 0L in
  let cf = bc prog.body new_bdd in 
  let decisions_len :int64 = Int64.of_int(List.length (!dlist)) in
  let decisions = List.map !dlist ~f:(fun (_,b) -> b) in
  (* I really dislike this hack I did to make the weight function into a 
    valid wmc parameter. But it works and it's decently fast...
    in hindsight I should have probably used a priority queue, but whatevs *)
  let sorted_weight_fn = List.sort cf.fn ~compare:(fun x y -> Int64.compare (fst x) (fst y))  in 
  let wmc_map = List.map sorted_weight_fn ~f:(fun x -> snd x) in
  let wmcparam = new_wmc_params_eu wmc_map in
  let unn_and_acc = bdd_and new_bdd cf.unn cf.acc in
  let (meu, _) = bdd_meu unn_and_acc cf.acc decisions decisions_len wmcparam in 
  extract meu
