open Dappl
(* open Experiments *)
open Util
open Core

(***********************************************************************************)
(* command line arguments                                                          *)
(* see https://dev.realworldocaml.org/command-line-parsing.html                    *)
(***********************************************************************************)



(** print the s-expression parsing of the program (mainly for debugging the parser )*)
let  _print_sexp_prop (prop : Bc.propexpr) : unit =
  Format.printf "UNN : \n\t%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (Bc.sexp_of_bexpr prop.unn));
  Format.printf "ACC : \n\t%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (Bc.sexp_of_bexpr prop.acc))

let print_sexp =
  Command.basic
    ~summary:"dappl debugging tool."
    ~readme:(fun () -> "put in a .dappl file to see the parser output!")
     (let%map_open.Command
        verbosity = anon ("verbosity" %: string)
        and filename = anon ("filename" %: string) in
        fun () ->
          let parsed = parse_from_file filename in
          let expr = (Core_grammar.sexp_of_expr (Core_grammar.from_external_expr parsed.body)) in
          let prop = Bc.bc (Core_grammar.from_external_expr parsed.body) in
          match verbosity with
          | "front" ->  Format.printf "%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 expr)
          | "prop"  ->  _print_sexp_prop prop
          | "all"   ->  Format.printf "AST : \n\t%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 expr);
                        _print_sexp_prop prop
          | _       -> failwith "invalid debug!"
    )
(*
let only_filename =
  Command.basic
    ~summary:"dappl solves your meu problems."
    ~readme:(fun () -> "put in a .dappl file to see the magic happen!")
     (let open Command.Let_syntax in
     let open Command.Param in
     let%map filename = anon ("filename" %: string) in
     fun () ->
        let parsed = parse_from_file filename in
        let internal = Core_grammar.from_external_program parsed in
        (* let _ : unit = Format.printf ("program parses. yay!\n") in  *)
        let t = Core_unix.gettimeofday() in
        let ((_, meu),pruned) = Bc.infer internal in
        let t' = Core_unix.gettimeofday() in
        Printf.printf  "MEU is %F\nTime elapsed: %F\n" meu (t' -. t);
        Printf.printf  "times pruned is %n" (Int64.to_int_exn pruned))

let gen_tests =
  Command.basic
    ~summary:"dappl test suite."
    ~readme:(fun () -> "TEST = mdp, n = an integer.")
     (let%map_open.Command
      test = anon ("test" %: string)
      and n = anon ("n" %: int)
      and d = anon (maybe ("d" %: int)) in
      fun () -> match test with
      | "mdp"         ->  Dappl_benchmarks.to_file_mdp n
      | "ladder"      ->  (match d with
                          | None -> failwith "No depth specified for ladder!"
                          | Some(x) -> Dappl_benchmarks.to_file_ladder n x)
      | "earthquake"  ->  Gen.mk_earthquake_to_file n
      | "asia"        ->  Gen.mk_asia_to_file n
      | "survey"      ->  Gen.mk_survey_to_file n
      | "bn"          ->  Gen.mk_earthquake_to_file n ;
                          Gen.mk_asia_to_file n;
                          Gen.mk_survey_to_file n ;
                          Gen.mk_insurance_to_file n;
                          Gen.mk_sachs_to_file n;
      | _             ->  failwith "invalid test!") *)

(* let command =
  Command.group
    ~summary:"Only the best for the people!"
    [ "run", only_filename; "test", gen_tests ] *)

let () = Command_unix.run ~version:"0.1" print_sexp