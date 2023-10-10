```                             
   ,--.                      ,--. 
 ,-|  | ,--,--. ,---.  ,---. |  |  
' .-. |' ,-.  || .-. || .-. ||  | 
\ `-' |\ '-'  || '-' '| '-' '|  | 
 `---'  `--`--'|  |-' |  |-' `--' 
               `--'   `--'        
```

dappl is a tiny language to reason about bayesian maximum expected utility.

make sure your opam environment is set to OCaml version 4.14.1 before doing anything too crazy, like building.

To build, clone `rsdd-dappl` and `rsdd-ocaml-dappl` from Minsung's github and use those instead of the usual `rsdd` and `rsdd-ocaml`. Here are the relevant links:

* `rsdd-dappl`: https://github.com/minsungc/rsdd-dappl
* `rsdd-ocaml-dappl`: https://github.com/minsungc/rsdd-ocaml-dappl

Follow the instructions laid out in these repositories, then run `opam install . --deps-only` and `dune build`.

CLI interface:
* `dappl run FILENAME.dappl` will compute MEU of the `FILENAME.dappl`.
* `dappl test TEST N` will generate dappl and DTProblog files on which you can replicate experiments. It will save it in the directory `experiments/TEST/`.
  * `mdp N` will give you the MDP benchmark with `N` many columns.
  * More to come!
  
Navigating the repository:

* `bin/` contains the CLI.
* `lib/` is the implementation of the language. The main MEU compilation algorithm is in `bc.ml`.
* `examples/` contains small `.dappl` files to help your understanding of the language.
* `experiments/` has utilities for the automatic generation of benchmarks, specifically in `dappl_benchmarks.ml`. This folder also houses generated test files via CLI.