```                             
   ,--.                      ,--. 
 ,-|  | ,--,--. ,---.  ,---. |  |  
' .-. |' ,-.  || .-. || .-. ||  | 
\ `-' |\ '-'  || '-' '| '-' '|  | 
 `---'  `--`--'|  |-' |  |-' `--' 
               `--'   `--'        
```

dappl is a tiny language to reason about bayesian maximum expected utility.

## Requirements

* OCaml >=4.14.0
* Python 3.10.x, with `problog, pysdd, graphviz, numpy, matplotlib` and their dependencies.

There is an issue where the latest version of `pysdd` does not compile properly; run `python -m pip install git+https://github.com/wannesm/PySDD.git#egg=PySDD` to install `pysdd` instead.

## Building 

To build, clone `rsdd-dappl` and `rsdd-ocaml-dappl` from Minsung's github and use those instead of the usual `rsdd` and `rsdd-ocaml`. Here are the relevant links:

* `rsdd-dappl`: https://github.com/minsungc/rsdd-dappl
* `rsdd-ocaml-dappl`: https://github.com/minsungc/rsdd-ocaml-dappl

Follow the instructions laid out in these repositories, then run `opam install . --deps-only` and `dune build`.

CLI interface:
* `dappl run FILENAME.dappl` will compute MEU of the `FILENAME.dappl`.
* `dappl test TEST N ?M` will generate dappl and DTProblog files on which you can replicate experiments. It will save it in the directory `experiments/TEST/`.
  * `mdp N` will give you the MDP benchmark with `N` many columns.
  * `ladder N M` will give you the network ladder benchmark with `i` many columns and `j` many tries.
  * `bn N` will give you `N` many each of the Bayesian network (BN) benchmarks. You can call each BN generator individually by instead doing `survey N`, `asia N`, or `earthquake N`.
  
## Navigating the repository

* `bin/` contains the CLI.
* `lib/` is the implementation of the language. The main MEU compilation algorithm is in `bc.ml`.
* `examples/` contains small `.dappl` files to help your understanding of the language.
* `experiments/` has utilities for the automatic generation of benchmarks, specifically in `dappl_benchmarks.ml`. This folder also houses generated test files via CLI.
* `derkinderen/` contains Python files from the artifact of Derkinderen et al., to perform MEU.
* `experiment.py` runs some experiments, and outputs results in the command line. Make sure you have Problog installed before attempting to run the experiment via `python`.
* `numbers/` contains the output data from `experiment.py` as `.csv`s and also a Jupyter notebook for figures.
