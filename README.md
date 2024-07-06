# dappl Artifact for OOPSLA 2024

## Introduction

This artifact provides the implementation of `dappl` and surrounding experiments.

## Hardware Dependencies

These experiments require a working Docker installation.
This artifact was tested by the authors on x86 Ubuntu 22.04 and ARM macOS.
Instructions will assume a Linux-like shell environment for running command to set up the container.

## Disclaimer

During preparation of the artifact there were bugs found in the implementation
that, once fixed, impacted performance negatively. The experimental values in the paper
do not accurately reflect the experiments in this image.

## Getting started

1. Get a working docker installation.
2. Run the following command in a shell to pull the container from DockerHub:

  ```
    docker pull minsungc/dappl:oopsla-2024
  ```

  WARNING: the image is rather large in size and will take quite a while (~30min) to initialize.

1. Run the following set of commands to create a directory for output to mount
to the container, an input directory for writing your own programs, run the
container with the mounted directories, and be dropped into the shell where
you will run the rest of the experiments.

    $ mkdir -p input output
  $ docker run -it --rm -v $(PWD)/output:/output -v $(PWD)/input:/input gouwarj/pineappl-oopsla-2024:artifact

## Running your own dappl programs

Several example dappl programs are given in the `examples/` folder.
To run your own `dappl` program, or one from the examples, type in the container

  ```
    dappl run $FILE
  ```
where $FILE is the path to the `.dappl` file.
There are also optional debug and caching options available for toggle; type `dappl run -help` for details.

## Recreating experiments

To replicate experiments, type into the console

  ```
    ./experiment.sh
  ```
or, if you would like to see a specific experiment ran, comment out the other experiments in `experiment.py`.

The resulting numbers are stored in a .csv file in the `numbers/` folder.