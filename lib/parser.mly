(** defines the core parser
  * see https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html *)
%{
  open Syntax
%}


/* Tokens */
%token EOF
%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token AND OR NOT DISCRETE XOR
%token LPAREN RPAREN
%token IF THEN ELSE TRUE FALSE IN
%token SEMICOLON COMMA COLON
%token LET OBSERVE FLIP REWARD LBRACE RBRACE
%token LIST LBRACKET RBRACKET BIND RETURN
%token CHOOSE WITH MID TO LOOP

%token <int>    INT_LIT
%token <string> FLOAT_LIT
%token <string> ID

/* associativity rules */
%left OR
%left AND
%left NOT
%left IFF
%left XOR

/* entry point */

%start program
%type <Syntax.program> program

%%
num:
    | FLOAT_LIT { (Float.of_string $1) }
    | INT_LIT { (Float.of_int $1) }
    | INT_LIT DIVIDE INT_LIT { Float.div (Float.of_int $1) (Float.of_int $3) }

disc :
  | ID COLON num { ($1, $3)}
disc_list :
  | separated_nonempty_list(COMMA, disc) {$1}

pattern:
  | ID TO expr { ($1, $3) }
pattern_list :
  | separated_nonempty_list(MID, pattern) {$1}

expr:
    | (* (e) *) delimited(LPAREN, expr, RPAREN) { $1 }
    | (* [a1,...,an] *)
      delimited(LBRACKET, separated_nonempty_list(COMMA, ID), RBRACKET)
      { Decision({startpos=$startpos; endpos=$endpos}, $1) }
    | (* choose e with | a_i -> e_i *)
      CHOOSE expr WITH MID pattern_list
      { ChooseWith({startpos=$startpos; endpos=$endpos}, $2, $5)}
    | TRUE { True({startpos=$startpos; endpos=$endpos}) }
    | FALSE { False({startpos=$startpos; endpos=$endpos}) }
    | (* x *)         ID { Ident({startpos=$startpos; endpos=$endpos}, $1) }
    | (* e && e *)    expr AND expr { And({startpos=$startpos; endpos=$endpos}, $1, $3) }
    | (* e || e *)    expr OR expr { Or({startpos=$startpos; endpos=$endpos}, $1, $3) }
    | (* e ^ e *)     expr XOR expr { Xor({startpos=$startpos; endpos=$endpos}, $1, $3) }
    | (* !e *)        NOT expr { Not({startpos=$startpos; endpos=$endpos}, $2) }
    | (* flip num *)  FLIP num { Flip({startpos=$startpos; endpos=$endpos}, $2) }
    | (* reward k ; e *)
      REWARD num SEMICOLON expr { Reward({startpos=$startpos; endpos=$endpos}, $2 ,  $4)}
    | (* observe e; e *) OBSERVE expr SEMICOLON expr { Observe({startpos=$startpos; endpos=$endpos}, $2, $4) }
    | (* if e then e else e *) IF expr THEN expr ELSE expr { Ite({startpos=$startpos; endpos=$endpos}, $2, $4, $6) }
    | (* x <- e; e *)
      ID BIND expr SEMICOLON expr { Bind({startpos=$startpos; endpos=$endpos}, $1, $3, $5) }
    | (* return P *)
      RETURN expr { Return({startpos=$startpos; endpos=$endpos}, $2)}
    | (* discrete[ x_1 : p_1, ... x_n : p_n] *)
      DISCRETE delimited(LBRACKET, disc_list, RBRACKET) { Discrete({startpos=$startpos; endpos=$endpos}, $2)}
    | (* loop n { e } *)
      LOOP num delimited(LBRACE, expr , RBRACE) { Loop({startpos=$startpos; endpos=$endpos}, $2, $3)}

program:
  body=expr; EOF { { body=body } }