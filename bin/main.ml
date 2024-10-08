open Dappl
open Testgen
open Util
open Core

(***********************************************************************************)
(* command line arguments                                                          *)
(* see https://dev.realworldocaml.org/command-line-parsing.html                    *)
(***********************************************************************************)



(** print the s-expression parsing of the program (mainly for debugging the parser )*)
let  _print_sexp_prop (prop : Bc.propexpr) : unit =
  Format.printf "UNN : \n%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (Bc.sexp_of_bexpr prop.unn));
  Format.printf "ACC : \n%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 (Bc.sexp_of_bexpr prop.acc))

let print_sexp =
  Command.basic
    ~summary:"dappl debugging tool."
    ~readme:(fun () ->
      "
          \tdappl ast [front | prop | round-trip | all] $FILE \n\n\
        \
        front       : prints s-expression representation of the dappl AST.\n\
        prop        : prints s-expression representation of the underlying Boolean formulae.\n\
        round-trip  : prints the pretty-printed representation of the dappl AST.\n\
        all         : prints all representations.\n\n\
        This command does NOT run MEU. It is simply to debug the parser and the AST.\n
      ")
     (let%map_open.Command
        verbosity = anon ("verbosity" %: string)
        and filename = anon ("filename" %: string) in
        fun () ->
          let parsed = parse_from_file filename in
          let expr = (Core_grammar.sexp_of_expr (Core_grammar.from_external_expr parsed.body)) in
          let prop = Bc.bc (Core_grammar.from_external_expr parsed.body) in
          match verbosity with
          | "front"       ->  Format.printf "%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 expr)
          | "prop"        ->  _print_sexp_prop prop
          | "round-trip"  ->  Pp.to_stdout (Core_grammar.from_external_expr parsed.body)
          | "all"         ->  Format.printf "AST : \n%s\n" (Sexplib0__Sexp.to_string_hum ~indent:2 expr);
                              _print_sexp_prop prop
          | _             -> failwith "invalid debug!"
    )

let run =
  Command.basic
    ~summary:"dappl's meu solver."
    ~readme:(fun () ->
      "
       \tdappl run [--cache true|false] [--debug 0 | 1 | 2] $FILE \n\n
      ")
     (let%map_open.Command
        with_cache = flag "--cache" (optional bool)
         ~doc:"bool toggles caching in ub calculation.\n true (default) : enables caching\n false : disables caching.\n"
        and debug_level = flag "--debug" (optional int)
         ~doc:"int run in debug mode.\n 0 (default) : no debug\n1 : emits AST\n2 : emits AST and weight maps\n"
        and filename = anon ("filename" %: string) in
        fun () ->
          let parsed = parse_from_file filename in
          let internal = (Core_grammar.from_external_program parsed).body in
          let t = Core_unix.gettimeofday() in
          let debug = (match debug_level with | Some i -> i | None -> 0) in
          let ((_, meu),size) = (match with_cache with
          | Some b  -> Bc.infer internal b debug
          | None    -> Bc.infer internal true debug) in
          let t' = Core_unix.gettimeofday() in
          Format.printf  "MEU is %F\nTime elapsed: %F\n" meu (t' -. t);
          Format.printf  "size is %n\n" size
     )

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
      | "gridworld"   ->  (match d with
                          | None -> failwith "No depth specified for gridworld!"
                          | Some(x) ->
                          (Create_grid.print_grid(
                            Create_grid.mk_grid n x
                          )))
      | _             ->  failwith "invalid test!")

let command =
  Command.group
    ~summary:"Only the best for the people!"
    [ "run", run; "ast", print_sexp ; "test" , gen_tests]

let () = Command_unix.run ~version:"0.1" command