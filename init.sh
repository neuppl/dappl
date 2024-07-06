cd dappl

eval $(opam env)

dune build

alias dappl='./dappl/_build/install/default/bin/dappl'