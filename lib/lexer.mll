(** defines the lexer used for defining all symbols during parsing
  * this file contains many more symbols than necessary; they can be ignored
  * see https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html
  *)
{
open Lexing
open Parser

exception SyntaxError of string

let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }
}

let int = '-'? ['0'-'9'] ['0'-'9']*
let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = digit* frac? exp?
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule token =
    parse
    | white                     { token lexbuf; }
    | newline                   { next_line lexbuf; token lexbuf }
    | "//"                      { comment lexbuf; }
    (* Logical operators *)
    | "^"                       { XOR }
    | '!'                       { NOT }
    | "&&"                      { AND }
    | "||"                      { OR }
    (* Bind *)
    | "<-"                      { BIND }
    | ';'                       { SEMICOLON }
    (* ITE *)
    | "if"                      { IF }
    | "then"                    { THEN }
    | "else"                    { ELSE }
    (* Keywords for probabilistic fragment *)
    | "discrete"                { DISCRETE }
    | "true"                    { TRUE }
    | "false"                   { FALSE }
    | "observe"                 { OBSERVE }
    | "flip"                    { FLIP }
    (* Keywords for decision-theoretic fragment *)
    | "reward"                  { REWARD }
    | "choose"                  { CHOOSE }
    | '['                       { LBRACKET }
    | ']'                       { RBRACKET }
    | "with"                    { WITH }
    | '|'                       { MID }
    | "->"                      { TO }
    (* Returning a pure value *)
    | "return"                  { RETURN }
    (* Delimiters and etc. *)
    | '('                       { LPAREN }
    | ')'                       { RPAREN }
    | ':'                       { COLON }
    | ','                       { COMMA }
    | float as num              { FLOAT_LIT(num); }
    | int as i                  { INT_LIT(int_of_string i); }
    | id as ident               { ID(ident); }
    | eof                       { EOF }
and comment =
    parse
    | '\n'                      { token lexbuf }
    | _                         { comment lexbuf }