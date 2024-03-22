(** defines the core parser
  * see https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html *)
%{
  open Syntax
%}


/* Tokens */
%token EOF
%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token LT LTE GT GTE EQUAL_TO NEQ EQUAL LEFTSHIFT RIGHTSHIFT
%token AND OR NOT DISCRETE IFF XOR SAMPLE
%token LPAREN RPAREN
%token IF THEN ELSE TRUE FALSE IN INT
%token SEMICOLON COMMA COLON
%token LET OBSERVE FLIP REWARD LBRACE RBRACE FST SND FUN BOOL ITERATE UNIFORM BINOMIAL
%token LIST LBRACKET RBRACKET CONS HEAD TAIL LENGTH BIND RETURN
%token CHOOSE WITH MID TO 

%token <int>    INT_LIT
%token <string> FLOAT_LIT
%token <string> ID

/* associativity rules */
%left OR
%left AND
%left NOT
%left IFF
%left XOR
%left LTE GTE LT GT NEQ
%right CONS
%left PLUS MINUS EQUAL_TO LEFTSHIFT RIGHTSHIFT
%left MULTIPLY DIVIDE MODULUS
/* entry point */

%start program
%type <Syntax.program> program

%%
num:
    | FLOAT_LIT { (Float.of_string $1) }
    | INT_LIT { (Float.of_int $1) }
    | INT_LIT DIVIDE INT_LIT { Float.div (Float.of_int $1) (Float.of_int $3) }

pattern:
  | ID TO expr { ($1, $3) }
pattern_list :
  | separated_nonempty_list(MID, pattern) {$1}

pure_expr:
  | TRUE { True({startpos=$startpos; endpos=$endpos}) }
  | FALSE { False({startpos=$startpos; endpos=$endpos}) }
  | (* x *)
    ID { Ident({startpos=$startpos; endpos=$endpos}, $1) }
  | (* e && e *) 
    pure_expr AND pure_expr { And({startpos=$startpos; endpos=$endpos}, $1, $3) }
  | (* e || e *) 
    pure_expr OR pure_expr { Or({startpos=$startpos; endpos=$endpos}, $1, $3) }
  | (* e ^ e *) 
    pure_expr XOR pure_expr { Xor({startpos=$startpos; endpos=$endpos}, $1, $3) }
  | (* !e *) 
    NOT pure_expr { Not({startpos=$startpos; endpos=$endpos}, $2) }
  
expr:
  | (* (e) *) 
    delimited(LPAREN, expr, RPAREN) { $1 }
  | (* return e *)
    RETURN pure_expr { Return({startpos=$startpos; endpos=$endpos}, $2) }
  | (* [a1,...,an] *) 
    delimited(LBRACKET, separated_nonempty_list(COMMA, ID), RBRACKET) 
    { Decision({startpos=$startpos; endpos=$endpos}, $1) }
  | (* flip num *) 
    FLIP num { Flip({startpos=$startpos; endpos=$endpos}, $2) }
  | (* choose e with | a_i -> e_i *)
    CHOOSE pure_expr WITH MID pattern_list
    { ChooseWith({startpos=$startpos; endpos=$endpos}, $2, $5)}
  | (* reward k ; e *)
    REWARD num SEMICOLON expr
    { Reward({startpos=$startpos; endpos=$endpos}, $2, $4)}
  | (* observe e; e *) 
    OBSERVE pure_expr SEMICOLON expr 
    { Observe({startpos=$startpos; endpos=$endpos}, $2, $4) }
  | (* if e then e else e *) IF pure_expr THEN expr ELSE expr { Ite({startpos=$startpos; endpos=$endpos}, $2, $4, $6) }
  | (* x <- e; e *)
    ID BIND expr SEMICOLON expr { Bind({startpos=$startpos; endpos=$endpos}, $1, $3, $5) }

program:
  body=expr; EOF { { body=body } }