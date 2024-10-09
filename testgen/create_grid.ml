(* Creates an n x n grid, randomly generates start and end, *)
(* then adds m (m < 1/2 n^2) obstacles. *)
(* Also associated utilities *)

open Mk_expr
open Core
open Dappl.Core_grammar
open Pp

type square = Start | End | Rock | Path
[@@deriving eq]

type grid = (int, square) Hashtbl.t

let find_dim (g : grid) = Float.to_int(sqrt (Int.to_float (Hashtbl.length g)))
let find_start (g : grid) =
  let (x,_) = List.find_exn (Hashtbl.to_alist g) ~f:(fun (_,y) -> equal_square y Start) in
  x
let find_end (g : grid) =
  let (x,_) = List.find_exn (Hashtbl.to_alist g) ~f:(fun (_,y) -> equal_square y End) in
  x

type move = Left | Right | Up | Down
type valid_moves = (int * move) list

let is_valid_move (s : int) (f : int) (g : grid) : bool =
  let n = find_dim g in
  let in_bounds = s >= 0 && f >= 0 && s < n*n && f < n*n in
  let up_or_down = (f-s = n) || (s-f = n) in
  let left_or_right = Int.abs((f mod n) - (s mod n)) = 1 in
  let is_rock =
    let s_rock = Hashtbl.find g s in
    let e_rock = Hashtbl.find g f in
    match s_rock, e_rock with
    | Some s', Some e' -> (equal_square s' Rock) || (equal_square e' Rock)
    | _                -> false in
  in_bounds && (up_or_down || left_or_right) && not(is_rock)

let find_valid_moves (s : int) (g : grid) : valid_moves =
  let n = find_dim g in
  let moves = [(s-1, Left); (s+1, Right); (s+n, Down); (s-n, Up)] in
  List.filter moves ~f:(fun (f, _) -> is_valid_move s f g)

let rec is_solvable (g : grid) =
  let s, f = find_start g, find_end g in
  is_solvable_h [s] f g
and is_solvable_h (l : int list) (f : int) (g : grid) =
  let moves = List.map l ~f:(fun x -> find_valid_moves x g) in
  let moves = List.map (List.concat moves) ~f:(fun (x,_)->x) in
  let moves = List.append l moves in
  let moves = List.dedup_and_sort moves ~compare:Int.compare in
  if List.equal (=) moves l
  then
    false
  else
    match List.find moves ~f:(fun x -> x = f) with
    | None -> is_solvable_h moves f g
    | Some _ -> true

let rec mk_grid (n:int) (m:int):grid =
  (* Make start and end decently far away *)
  (* let grid_min    = 0 in *)
  let grid_max    = n*n-1 in
  let start_pos   = Random.int (grid_max/4) in
  let end_pos     = Random.int (grid_max/4) + (3*(grid_max/4)) in
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
  for j = 0  to grid_max do
    let v = Hashtbl.add res ~key:j ~data:Path in
    match v with _ -> ()
  done;
  (* Check if grid is solvable; else do it again *)
  if is_solvable res then res else mk_grid n m

let print_square (sq:square) =
  match sq with
  | Start -> "S"
  | End   -> "E"
  | Rock  -> "R"
  | Path  -> " "

let print_move (m : move) =
  match m with
  | Left  -> "Left"
  | Right -> "Right"
  | Up    -> "Up"
  | Down  -> "Down"
let print_valid_moves (l : valid_moves) =
  List.iter l ~f:(
    fun (_,y) ->
      Printf.printf "%s" (print_move y)
  ); Printf.printf "\n"

let print_grid (res:grid):unit =
  let lst = Hashtbl.to_alist res in
  let lst = List.sort lst ~compare:(fun (x,_) (u,_) -> Int.compare x u) in
  let lst = List.map lst ~f:(fun (_,y) -> y) in
  let ct  = find_dim res in
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

(* Make a dappl program of a grid with length/width size
  and rock number of rocks with some horizon. *)
let rec mk_grid_dappl (size : int) (rocks : int) (horizon : int)  =
  let i  = ref 0 in
  let g = mk_grid size rocks in
  print_grid g;
  let s = find_start g in
  let v = mk_grid_dappl_h g s horizon i [s] in
  if equal_expr v (Return False) then mk_grid_dappl size rocks horizon else v
and mk_grid_dappl_h (g : grid) (vtx : int) (horizon : int) (i : int ref) (seen : int list)=
  let e = find_end g in
  if vtx = e then mk_reward 1. (Return True) else
  match horizon with
  | 0 -> Return False
  | _ -> (
    let flip_string = (i := !i +1); "f"^(Int.to_string !i) in
    let f = mk_flip 0.1 in
    let vmoves = find_valid_moves vtx g in
    (* Enforce no backtracking *)
    let vmoves = List.map vmoves ~f:(fun (x,_)->x) in
    let vmoves = List.filter vmoves ~f:(fun x->not(List.exists seen ~f:((=) x))) in
    let seen = List.append seen vmoves in
    if List.length vmoves = 0
    then
      Return False
    else
      (* Make random move if flip is true *)
      let rand_move = List.nth_exn vmoves (Random.int (List.length vmoves)) in
      let rand_expr = mk_grid_dappl_h g rand_move (horizon-1) i seen in
      let str_vmoves = List.map vmoves ~f:(fun j->(i := !i+1); "d"^(Int.to_string !i)^(Int.to_string j)) in
      let dec = mk_dec str_vmoves in
      let dec_string = (i := !i+1); "D"^(Int.to_string !i) in
      let dec_expr = mk_bind dec_string dec in
      let rst = List.map vmoves ~f:(fun vx -> mk_grid_dappl_h g vx (horizon-1) i seen) in
      let choosewith = mk_choosewith dec_string str_vmoves rst in
      mk_bind flip_string f (mk_ite flip_string rand_expr (dec_expr choosewith))
  )

let mk_grid_dappl_to_file (size : int) (rocks : int) (horizon : int) (times : int) : unit =
  Printf.printf "Generating %i many grids\n" times;
  for i = 1 to times do
    let s, r, h = Int.to_string size, Int.to_string rocks, Int.to_string horizon in
    let j = Int.to_string i in
    let filename = "testgen/grid/grid_"^s^"_"^r^"_"^h^"_"^j^".dappl" in
    let oc = Out_channel.create filename in
    let gridworld = mk_grid_dappl size rocks horizon in
    to_channel oc gridworld; Out_channel.close oc;
  done
