from itertools import chain
import subprocess
import os
import numpy as np
import pandas as pd
from experiments.framework import *

#######################
# This file runs
# and outputs the DIMINSHING RETURNS benchmarks coded in experiments/.
#######################

def dr (n) :
  cols = [i+1 for i in range(n)]
  columns_of_df = [[f"{i}_mean", f"{i}_stdev"] for i in cols]
  columns_of_df =  list(chain.from_iterable(columns_of_df))
  df = pd.DataFrame(index=list(Method.__members__.keys()), columns=columns_of_df)
  gen_cols_cmd = "./_build/install/default/bin/dappl test mdp "
  for i in cols :
    cmd =  gen_cols_cmd + str(i)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
  for method in Method :
    print(f"+++++++++++++++++++++++++++++++++++++")
    print(f"Doing DR benchmark on Method " + method.name)
    print(f"+++++++++++++++++++++++++++++++++++++\n\n")
    for i in cols :
      print(f"Calculating numbers for "+str(i)+" many columns")
      filepath = "testgen/mdp/"
      file = "mdp" + str(i) + ".dappl" if (method == Method.dappl) else "mdp" + str(i) + ".pl"
      s = run_n_times(method, filepath, file, 60, 5)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
    print("\n\n")
  df.to_csv('numbers/dr.csv', index=True)
  return


