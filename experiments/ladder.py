from itertools import chain
import subprocess
import pandas as pd
from experiments.framework import *

#######################
# This file runs
# and outputs the LADDER benchmarks coded in experiments/.
#######################


def ladder_long (cols : int) :
  depth = [i + 2 for i in range(cols)]
  columns_of_df = [[f"{i}_mean", f"{i}_stdev"] for i in depth]
  columns_of_df =  list(chain.from_iterable(columns_of_df))
  df = pd.DataFrame(index=list(Method.__members__.keys()), columns=columns_of_df)
  cmds = [f"./_build/install/default/bin/dappl test ladder {j} 1" for j in depth]
  for cmd in cmds :
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
  for method in Method :
    print(f"+++++++++++++++++++++++++++++++++++++")
    print(f"Doing Ladder (Depth 1) benchmark on Method " + method.name)
    print(f"+++++++++++++++++++++++++++++++++++++\n\n")
    for i in depth :
      print(f"Calculating numbers for {2*(i-1)} many decisions")
      filepath = "testgen/ladder/"
      file = f"ladder{i}_1.dappl" if (method == Method.dappl) else f"ladder{i}_1.pl"
      s = run_n_times(method, filepath, file, 300, 1)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
    print("\n\n")
  df.to_csv('numbers/ladder_long.csv', index=True)
  return

def ladder (cols : int) :
  depth = [i+1 for i in range(cols)]
  columns_of_df = [[f"{i}_mean", f"{i}_stdev"] for i in depth]
  columns_of_df =  list(chain.from_iterable(columns_of_df))
  df = pd.DataFrame(index=list(Method.__members__.keys()), columns=columns_of_df)
  gen_cols_cmd = "./_build/install/default/bin/dappl test ladder "
  for i in depth :
    cmd =  gen_cols_cmd + str(cols) + " " + str(i)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
  for method in Method :
    print(f"+++++++++++++++++++++++++++++++++++++")
    print(f"Doing Ladder (Depth <={cols}) benchmark on Method " + method.name)
    print(f"+++++++++++++++++++++++++++++++++++++\n\n")
    for i in depth :
      print(f"Calculating numbers for "+str(cols)+" many columns, depth " +str(i))
      filepath = "testgen/ladder/"
      file = f"ladder{cols}_{i}.dappl" if (method == Method.dappl) else f"ladder{cols}_{i}.pl"
      s = run_n_times(method, filepath, file, 300, 1)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
    print("\n\n")
  df.to_csv(f'numbers/ladder_{cols}.csv', index=True)
  return

