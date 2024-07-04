# `lib/`

This folder contains code for the dappl compiler.

* `lexer.mll`: the lexer.
* `parser.mly`: the parser.
* `syntax.ml`: the parser target.
* `core_grammar.ml`: defines the dappl AST, an extension of Figure 9, and a conversion from the parser target to the AST
* `bc.ml`: knowledge compilation from dappl AST to BDD, as well as meu computation
* `util.ml`: various debugging/parsing utilities