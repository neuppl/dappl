from itertools import chain
import subprocess
import os
import numpy as np
import pandas as pd
from experiments.framework import *

#######################
# This file runs
# and outputs the BAYESIAN NETWORK benchmarks coded in experiments/.
#######################

class BN(Enum):
  asia = "asia"
  earthquake = "earthquake"
  survey = "survey"

# Get a list of all filenames in the directory
directory_path = "testgen/bn/problog"
problog_filenames = os.listdir(directory_path)

print(problog_filenames)

def run_bn (method : Method, b : BN, \
            lbl : int, d : int, \
            to : int, times : int ) :
  match method :
    case Method.dappl :
      filepath = "testgen/bn/processed/"
      filename = f"{b.value}_{lbl}_method{d}.dappl"
      # print(filepath+filename)
      return run_n_times(method, filepath, filename, to, times)
    case _ :
      filepath = "testgen/bn/problog/"
      filename = f"{b.value}_{lbl}_method{d}.pl"
      # print(filepath+filename)
      return run_n_times(method, filepath, filename, to, times)

def bn_gen(n : int) :
  for bn in BN :
    cmd = f"./_build/install/default/bin/dappl test {bn.value} {n}"
    print(cmd)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)

def bn(n : int) :
  columns_of_df = [f"{b}_{i}" for b in list(BN.__members__.keys()) for i in [1,2]]
  columns_of_df = [[f"{i}_mean", f"{i}_stdev"] for i in columns_of_df]
  columns_of_df =  list(chain.from_iterable(columns_of_df))
  df = pd.DataFrame(index=list(Method.__members__.keys()), columns=columns_of_df)

  bn_gen(n)

  for method in Method :
    for bn in BN:
        for ty in [1,2] :
            print(f"+++++++++++++++++++++++++++++++++++++")
            print(f"Doing BN benchmark on Method {method.name}")
            print(f"Bayesian network : {bn.value}, Decision inserted via type {ty}")
            print(f"+++++++++++++++++++++++++++++++++++++\n\n")
            l = []
            for lbl in range(n) :
                # print(f"Method : {method}, BN:{bn}, lbl :{lbl}, ty :{ty}")
                l = l + run_bn(method, bn, lbl, ty, 120, 10)
            if avg_stdev(l) is not None :
              (a,b) = avg_stdev(l)
              avg_str = f"{bn.name}_{ty}_mean"
              stdev_str = f"{bn.name}_{ty}_stdev"
              df.loc[method.name, avg_str] = a
              df.loc[method.name, stdev_str] = b
            else : continue
  df.to_csv('numbers/bn.csv', index=True)
  return
