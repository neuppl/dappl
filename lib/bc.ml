(* 
  Boolean compilation for ~dappl~ 
  as shown in Section 4 of the paper
*)

open Rsdd
open Core_grammar
open Core
open Rsdd_abstractions
open Hashtbl

(* We maintain an association list of strings and VarLabels 
  to enforce exhaustive patternmatch in ChooseWith. *)

let dlist : ((string * rsdd_var_label) list) ref = ref [];;
let lookup : string -> rsdd_var_label = fun x ->
  let o = List.Assoc.find !dlist ~equal:String.equal x in
  match o with 
  | None -> failwith "unbound decision error??"
  | Some ptr -> (*let _ = Printf.printf "found!\n" in*) ptr

(*
  We make a dictionary of identifiers --> BDDPtrs to avoid allocating
  multiple newvars for the same flip (which will give us the wrong answer).
*)

let dictionary = create (module String);;

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
  | ChooseWith (d, l)   ->  (* compile the decision *) 
                            let ed = bc d bdd in
                            (* l becomes a list of (ptr to name, pattern) *) 
                            let ir = List.map l ~f:(fun (a,b) -> (bdd_var bdd (lookup a) true, bc b bdd)) in
                            let ir2 = List.map ir ~f:(fun (a,b) -> cf_and bdd (mk_from_ptr bdd a) b) in
                            (* which is then folded *)
                            let l = List.fold ir2 ~init:(f bdd) ~f:(cf_or bdd) in
                            cf_and bdd ed l
                            (* for (a,b) in l_of_behaviors *)
  | Flip n              ->  let k = Bignum.to_float n in
                            mk_newvar_prob bdd k
  | Reward k            ->  let k = Bignum.to_float k in
                            mk_newvar_rew bdd k
  | Decision l          ->  let (e, l) = mk_newvar_dec bdd l in 
                            let _ = dlist := List.append !dlist l in 
                            e
  | Bind (s, e, e')     ->  let cf_e = bc e bdd in
                            let _ = Hashtbl.add dictionary ~key:s ~data:cf_e in 
                            bc e' bdd
  | Observe (e,e')      ->  let e = bc e bdd in 
                            let e' = bc e' bdd in
                            { unn = e'.unn;
                              acc = bdd_and bdd e.unn e'.acc;
                              fn = merge_weight_fns e.fn e'.fn ; rw = Set.union e.rw e'.rw
                            }
  | Sequence(e, e')     ->  bc (And(e, e')) bdd
  | Ident x             ->  let ox = Hashtbl.find dictionary x in
                            match ox with 
                            | None -> failwith "unbound variable!"
                            | Some x' -> x'

(*Debug fn*)
let rt_newest_lbl bdd = let (lbl, _) = bdd_new_var bdd true in Printf.printf "asdfasdf %n\n" (Int64.to_int_exn lbl )

let infer (prog :program) : float * float = 
  (* compile first *)
  let new_bdd = mk_bdd_builder_default_order 0L in
  let cf = bc prog.body new_bdd in 
  (* then remember decisions, store as varlabel list *)
  let decisions_len :int64 = Int64.of_int(List.length (!dlist)) in
  let decisions = List.map !dlist ~f:(fun (_,b) -> b) in
  (* Then we make the WMC param. *)
  (* The below line may be an unnecessary step, but I didn't do rigorous enough testing to make sure *)
  let sorted_weight_fn = List.sort cf.fn ~compare:(fun x y -> Int64.compare (fst x) (fst y))  in 
  let wmc_map = List.map sorted_weight_fn ~f:(fun x -> snd x) in
  let (lbl, _) = bdd_new_var new_bdd true in 
  let _ = assert(Int64.to_int_exn lbl = (List.length wmc_map)) in 
  let wmcparam = new_wmc_params_eu wmc_map in
  (* Finally the actual MEU *)
  let unn_and_acc = bdd_and new_bdd cf.unn cf.acc in
  let (meu, _) = bdd_meu unn_and_acc cf.acc decisions decisions_len wmcparam in 
  extract meu
