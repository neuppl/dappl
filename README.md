# dappl Artifact for OOPSLA 2024

## Introduction

This artifact provides the implementation of `dappl` and surrounding experiments.

## Hardware Dependencies

These experiments require a working Docker installation.
This artifact was tested by the authors on x86 Ubuntu 22.04 and ARM macOS.
Instructions will assume a Linux-like shell environment for running **command** to set up the container.

## Disclaimer

During preparation of the artifact there were bugs found in the implementation
that, once fixed, impacted performance negatively. The experimental values in the paper
do not accurately reflect the experiments in this image.

## Getting started

1. Get a working docker installation.
2. Run the following commands in a shell to pull the container from DockerHub:

  ```
    docker pull minsungc/dappl:oopsla-2024
    docker run -it --rm --platform linux/amd64 minsungc/dappl:oopsla_2024
  ```

Then, once in the container, run the following sequence of commands to initialize the environment:

  ```
  cd dappl
  eval $(opam env)
  dune build
  alias dappl='/dappl/_build/install/default/bin/dappl'
  ```
WARNING: the image is rather large in size and requires the linux/amd64 architechure.
The build may fail if there is not enough disk space (~10gb) or if the architecture is unspecified.

## Running your own dappl programs

Several example dappl programs are given in the `examples/` folder.
To run your own `dappl` program, or one from the examples, type in the container

  ```
    dappl run $FILE
  ```
where $FILE is the path to your `.dappl` file.
There are also optional debug and caching options available for toggle; type `dappl run -help` for details.

## Recreating experiments

To replicate experiments, type into the console

  ```
    python3 experiment.py
  ```
you may get an error message that package `x` is not installed, then `pip install x` and rerunning the script will suffice.

If you would like to see a specific experiment ran, comment out the other experiments in `experiment.py`.

The resulting numbers are stored in a .csv file in the `numbers/` folder.

## Navigating the source repository

* `bin/`: command line tooling.
* `derkinderen/`: scripts from Derkinderen et al, ECAI 2020.
* `examples/`: examples of dappl programs.
* `experiments/`: python files for automated experimentation and result output
* `lib/`: the lexer, parser, and compiler
* `testgen/`: the main test generation tool. within:
  * `bn/` houses different bayesian networks that can be generated
  * `mdp/` houses the DR benchmark
  * `ladder` houses the network ladder diagnosis benchmarks