(* 
This file generates dappl files 
that recreate the methodology used for DTProblog in
Derkinderen et al., ECAI 2020.

First:
- Convert parent nodes that are pure `flips` into a decision 
- any node of the BN that is not a decision has a 0.5 chance to introduce one,
  until 4 decisions are there

Two methods to add utilities:
- Select each term t (bound variable) and add a reward : int between [-50, 50]:
  - for t with probability 0.8;
  - for !t with probability 0.3. 
- Make 5 new variables, with a positive and negative utility. 
  Then assign them an arbitrary rule R such that R -> v.
*)

open Mk_expr
open Core

type methodology = Select | New

(* for e: string, instead of x <- e, we return 
d <- [s];
y <- e ;
z <- if d then flip f else false ;
x <- y || z ;
*)
let introduce_new_dec (e : string) (f : float): string * varname = 
  let (s, d, _) = mk_dec 1 in
  let (b1, y) = mk_bind e in
  let (b2, z) = let flip = "flip "^ (Float.to_string f) in 
                mk_bind (mk_ite d [flip ; "false"]) in
  let (b3, x) = mk_bind (String.concat ~sep:" " [y ; "||" ; z]) in
  (String.concat ~sep:"\n" [s;b1;b2;b3], x)

(* Benchmark 1: Earthquake *)
let mk_earthquake () : string * varname list =
  (* Creates earthquake variable *)
  let (earthquake, ed, _) = mk_dec 1 in
  (* Creates burglary variable *)
  let (burglary, bd, _) = mk_dec 1 in
  (* We introduce a count to make four decisions. *)
  let ct : int ref = ref 1 in
  (* Creates alarm variable *)
  let new_dec = if (!ct < 4) then 
                  let _ : unit = ct := !ct +1 in
                  Random.bool () 
                else false in
  let (alarm, var) = 
    let t = [(mk_ite ed ["flip 0.95"; "flip 0.94"]) ;
              (mk_ite ed ["flip 0.29" ; "flip 0.001"])]  in
    let expr = mk_ite bd t in
    if new_dec then
      introduce_new_dec expr 0.95
    else
      mk_bind expr in
  (* Creates maryCalls variable *)
  let new_dec' = if (!ct < 4) then 
                  let _ : unit = ct := !ct +1 in
                  Random.bool () 
                else false in
  let (maryCalls, mc) = 
    let expr = mk_ite var ["flip 0.7"; "flip 0.01"] in
    if new_dec' then introduce_new_dec expr 0.7 else mk_bind expr in
  let (johnCalls, jc) = 
    let expr = mk_ite var ["flip 0.9"; "flip 0.05"] in
    if new_dec then introduce_new_dec expr 0.9 else mk_bind expr in
  let prog = String.concat ~sep:"\n" [earthquake; burglary; alarm ; maryCalls ; johnCalls] in 
  let relevant_vars = [ed; bd; var ; mc ; jc] in 
  (prog, relevant_vars)

let mk_earthquake_to_file () : unit =
  for i = 0 to 5 do
    let filename = "experiments/mdp/earthquake_" ^(Int.to_string i) ^ ".dappl" in
    let oc = Out_channel.create filename in   
    let (earthquake, _) = mk_earthquake () in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done