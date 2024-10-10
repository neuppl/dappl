from itertools import chain
import subprocess
import os
import numpy as np
import pandas as pd
from experiments.framework import *
import random

#######################
# This file runs
# and outputs the GRIDWORLD benchmarks coded in experiments/.
#######################


def gridworld (states, rocks, horizon, times) :
    r_of_states = range(2, states)
    r_of_rocks = range(2, rocks)
    cols = [(i+1,j+1, k+1, l+1) for i in r_of_states \
                for j in r_of_rocks \
                for k in range(horizon) \
                for l in range(times)]
    columns_of_df = [[f"{i}_{j}_{k}_{l}_mean", f"{i}_{j}_{k}_{l}_stdev"] for (i,j,k,l) in cols]
    columns_of_df =  list(chain.from_iterable(columns_of_df))
    df = pd.DataFrame(index=list(Method.__members__.keys()), columns=columns_of_df)
    gen_cols_cmd = "./_build/install/default/bin/dappl test gridworld "
    for (i, j, k, _) in cols :
        cmd =  gen_cols_cmd + f"{i} {j} {k} {times}"
        subprocess.run(cmd, \
                            shell=True, \
                            stdout=subprocess.PIPE, \
                            stderr=subprocess.PIPE, \
                            text=True)
    for method in Method :
        print(f"+++++++++++++++++++++++++++++++++++++")
        print(f"Doing Gridworld benchmark on Method " + method.name)
        print(f"+++++++++++++++++++++++++++++++++++++\n\n")
        for (i,j,k,l) in cols :
            print(f"Calculating numbers for {i} row, {j} rocks, {k} horizon")
            filepath = "testgen/grid/"
            file = f"grid_{i}_{j}_{k}_{l}.dappl" if (method == Method.dappl) else f"grid_{i}_{j}_{k}_{l}.pl"
            s = run_n_times(method, filepath, file, 300, 5)
            if avg_stdev(s) is not None :
                (a,b) = avg_stdev(s)
                df.loc[method.name, f"{i}_{j}_{k}_{l}_mean"] = a
                df.loc[method.name, f"{i}_{j}_{k}_{l}_stdev"] = b
            else : continue
            print("\n\n")
    df.to_csv('numbers/grid.csv', index=True)
    return


