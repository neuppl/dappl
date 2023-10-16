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
let mk_earthquake_vars () : string * varname list =
  (* Creates earthquake variable *)
  let (earthquake, ed, _) = mk_dec 1 in
  let earthquake = "// " ^ ed ^ " is variable earthquake\n" ^ earthquake in
  (* Creates burglary variable *)
  let (burglary, bd, _) = mk_dec 1 in
  let burglary = "// " ^ bd ^ " is variable burglary\n" ^ burglary in
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
  let alarm = "// " ^ var ^ " is variable alarm\n" ^ alarm in
  (* Creates maryCalls variable *)
  let new_dec' = if (!ct < 4) then 
                  let _ : unit = ct := !ct +1 in
                  Random.bool () 
                else false in
  let (maryCalls, mc) = 
    let expr = mk_ite var ["flip 0.7"; "flip 0.01"] in
    if new_dec' then introduce_new_dec expr 0.7 else mk_bind expr in
  let maryCalls = "// " ^ mc ^ " is variable maryCalls\n" ^ maryCalls in
  (* Creates johnCalls variable *)
  let (johnCalls, jc) = 
    let expr = mk_ite var ["flip 0.9"; "flip 0.05"] in
    if new_dec then introduce_new_dec expr 0.9 else mk_bind expr in
  let johnCalls = "// " ^ jc ^ " is variable johnCalls\n" ^ johnCalls in
  let prog = String.concat ~sep:"\n" [earthquake; burglary; alarm ; maryCalls ; johnCalls] in 
  let bound_vars = [ed; bd; var ; mc ; jc] in 
  (prog, bound_vars)

(* Does method 1 for adding rewards 
  For each x in bound_vars, we create the clause
  var <- if x then [REWARD?] else [REWARD?]
  where [REWARD?] is described in the head of the file.
  all variables are conjoined to make the final expression. *)
let generate_clause (bv : varname) : string * varname = 
  let b1 = Random.int 100 in
  let b2 = Random.int 100 in
  match (b1 < 80, b2 < 30) with
  | (true, true) -> 
    let r1, r2 = mk_reward (), mk_reward () in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (true, false) -> 
    let r1, r2 = mk_reward (), "true" in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (false, true) ->
    let r1, r2 = "true", mk_reward () in
    let ite = mk_ite bv [r1; r2] in
    mk_bind ite
  | (false, false) ->
    ("", bv)
let earthquake_method_1 (bound_vars : varname list) : string =
  let x = List.map bound_vars ~f:generate_clause in
  let clauses, bvs = List.unzip x in
  let final = String.concat ~sep:" && " bvs in
  String.concat ~sep:"\n" (List.append clauses [final])
  
(* Does method 2 for adding rewards
  We sample a random interpretation of the bound vars.
  We conjoin them together. Do this five times, then disjoin all.*)
let create_literal (v: varname) (b : bool) : varname = 
  if b then v else "!"^v
let generate_clause (bv : varname list) : string =
  let final : string list ref = ref [] in
  for _ = 0 to 5 do
    let x = List.map bv ~f:(fun _ -> Random.bool ()) in
    let z = List.zip_exn bv x in
    let y = List.map z ~f:(fun (a,b) -> create_literal a b) in
    let s = "( " ^ (String.concat ~sep:" && " y) ^ " )" in
    final := s :: !final
  done;
  String.concat ~sep:" || " !final

let earthquake_method_2 (bound_vars : varname list) : string =
  let final : string ref = ref "" in
  let vnl = ref [] in
  for _ = 0 to 5 do
    let x = generate_clause bound_vars in
    let (str,var) = mk_bind x in
    let str' = mk_ite var [mk_reward () ; mk_reward()] in 
    let (str'', v) = mk_bind str' in 
    final := !final ^ str ^ "\n" ^ str'' ^ "";
    vnl := v ::(!vnl)
  done;
  !final  ^ "\n" ^ (String.concat ~sep:" && " !vnl)

let mk_earthquake (m :methodology) =
  let (program, bv) = mk_earthquake_vars () in
  match m with
  | Select -> 
    let s = earthquake_method_1 bv in 
    String.concat ~sep:"\n" [program; s]
  | New -> 
    let s = earthquake_method_2 bv in 
    String.concat ~sep:"\n" [program; s]

let mk_earthquake_to_file () : unit =
  for i = 0 to 5 do
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method1" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_earthquake (Select) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
    let filename = "experiments/bn/processed/earthquake_" ^(Int.to_string i) ^ "_method2" ^".dappl" in
    let oc = Out_channel.create filename in   
    let earthquake = mk_earthquake (New) in
    Printf.fprintf oc "%s\n" earthquake; Out_channel.close oc;
  done