(* Creates an n x n grid, randomly generates start and end, *)
(* then adds m (m < 1/2 n^2) obstacles. *)

(* open Mk_expr *)
open Core
(* open Dappl.Core_grammar *)
(* open Random *)

type square = Start | End | Rock | Path
type grid = (int, square) Hashtbl.t
let mk_grid (n:int) (m:int):grid =
  (* Make start and end decently far away *)
  (* let grid_min    = 0 in *)
  let grid_max    = n*n-1 in
  let start_pos   = Random.int (grid_max/2) in
  let end_pos     = Random.int (grid_max/2) + (grid_max/2) in
  (* Create grid *)
  let res : grid = Hashtbl.create ~size:(grid_max+1) (module Int) in
  Hashtbl.add_exn res ~key:start_pos ~data:Start;
  Hashtbl.add_exn res ~key:end_pos ~data:End;
  (* Add rocks *)
  let i = ref 0 in
  while !i <> m do
    let r = Random.int grid_max in
    let v = Hashtbl.add res ~key:r ~data:Rock in
    match v with
    | `Ok -> (i := !i + 1)
    | `Duplicate -> ()
  done;
  (* Populate rest with None *)
  for i = 0  to grid_max do
    let v = Hashtbl.add res ~key:i ~data:Path in
    match v with _ -> ()
  done;
  res
;;

let print_square (sq:square) =
  match sq with
  | Start -> "S"
  | End   -> "E"
  | Rock  -> "R"
  | Path  -> " "

let print_grid (res:grid):unit =
  let lst = Hashtbl.data res in
  let ct  = Float.to_int(sqrt (Int.to_float (Hashtbl.length res))) in
  let i = ref 1 in
  List.iter lst ~f:(
    fun sq->
      let v = !i in
      match v with
      | 1   -> (i := v + 1; Printf.printf "|%s|" (print_square sq))
      | _   ->
        if v = ct
        then
          (i := 1; Printf.printf "%s|\n" (print_square sq))
        else
          (i := v + 1; Printf.printf "%s|" (print_square sq))
  )
;;