(* This file defines utilities to generate dappl AST. *)

open Core
open Dappl.Core_grammar

(* Produces rewards *)
let mk_reward (n : float) (e : expr) = Reward(n, e)

let mk_reward_rand (e : expr) = Reward(Random.float_range (Float.neg 100.0) 100.0, e)

let mk_reward_ret (n : float) (b : bool) =
  if b then Reward(n, Return(True)) else Reward(n, Return(False))

let mk_reward_ret_rand (b : bool) =
  let f = Random.float_range (Float.neg 100.0) 100.0 in
  if b then Reward(f, Return(True)) else Reward(f, Return(False))

(* Produces flips and discretes *)
let mk_flip (f : float) = Flip f

let mk_flip_rand (_ : unit) = Flip (Random.float_range (Float.neg 100.0) 100.0)

let mk_discrete (l :(string * float) list) = Discrete l

let mk_discrete_rand (l : string list) =
  let fl  = List.init (List.length l) ~f:(fun _ -> Random.float 1.) in
  let sum = List.fold fl ~init:0. ~f:Float.add in
  let fl' = List.map fl ~f:(fun x -> x /. sum) in
  mk_discrete(List.zip_exn l fl')

(* Produces decisions *)
let mk_dec (l : string list) = Decision(l)

(* Produces a choosewith *)
let mk_choosewith (s : string) (l : string list) (b : expr list) =
  ChooseWith(Ident s, List.zip_exn l b)

(* Produces an ite *)
let mk_ite (s : string) (t : expr) (e : expr) =
  Ite(Ident s, t, e)

(* Produces an observe *)
let mk_observe (b : expr) (e : expr) = Observe(b,e)

(* Produces an expression x <- expr *)
let mk_bind (s : string) (e : expr) (e' : expr) = Bind(s, e, e')

let mk_bind_dec (s : string) (l : string list) (e' : expr) = mk_bind s (mk_dec l) e'

let mk_bind_disc (s : string) (l : (string * float) list) (e' : expr) = mk_bind s (mk_discrete l) e'

let mk_bind_disc_rand (s : string) (l : string list) (e' : expr) = mk_bind s (mk_discrete_rand l) e'

let mk_bind_flip (s : string) (f : float) (e' : expr) = mk_bind s (mk_flip f) e'

let mk_bind_flip_rand (s : string) (_ : unit) (e' : expr) = mk_bind s (mk_flip_rand ()) e'

(* Produces loops *)
let mk_loop (n : int) (e : expr) = Loop(n, e)