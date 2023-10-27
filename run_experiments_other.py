import subprocess
import os
import numpy as np
from enum import Enum
import pandas as pd
from itertools import chain

#######################
# This file runs 
# and outputs the HMM and LADDER benchmarks coded in experiments/.
# run `python3 run_experiments_other.py` to see results printed on terminal;
# run `python3 run_experiments_other.py > results_other.log` if you *really* want to see it in a file...
#######################

dappl = "./_build/install/default/bin/dappl "
problog = "problog dt -v "
derk = "python3 derkinderen/maxeu.py "

class Method(Enum):
  dappl = "./_build/install/default/bin/dappl run "
  problog = "problog dt -v "
  derk = "python3 derkinderen/maxeu.py "


def run (method : Method, filepath : str, file : str, to : int) :
  cmd = method.value + filepath + file
  result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True, \
                        timeout=to)
  match method :
    case Method.dappl :
      return float(result.stdout.split(" ")[-1])
    case Method.problog :
      relevant = result.stdout.split('\n')[2:5]
      asdf = list(map(lambda x: x.split(" ")[-1], relevant))
      jkl = list(map(lambda x : float(x[:-1]), asdf))
      return sum(jkl)
    case Method.derk :
      relevant = result.stdout.split('\n')
      l = [relevant[0], relevant[4], relevant[7]]
      l = list(map(lambda x : float(x.split(" ")[-2]), l))
      return sum(l)

def run_n_times (method : Method, filepath : str, file : str, to : int, times : int) :
  cmd = method.value + filepath + file
  collect = []
  for i in range(times) :
    try :
      res = run (method, filepath, file, to)
      collect.append(res)
    except subprocess.TimeoutExpired :
      timeout = f"TIMEOUT happened after " + str(to) \
                + " seconds when calling " + cmd
      print(timeout)
      collect = []
      break
    except :
      print(f"uhoh bad")
  return collect

def avg_stdev(data : list) :
  if data == [] :
    return
  data_array = np.array(data)
  average = np.mean(data_array) * 1000
  std_dev = np.std(data_array) * 1000
  return (average, std_dev)

def hmm () :
  cols = [1,2,5,10,20,50,100,200,500,1000]
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
    print(f"Doing HMM benchmark on Method " + method.name)
    print(f"+++++++++++++++++++++++++++++++++++++")
    for i in cols :
      print(f"Calculating numbers for "+str(i)+" many columns")
      filepath = "experiments/mdp/"
      file = "mdp" + str(i) + ".dappl" if (method == Method.dappl) else "mdp" + str(i) + ".pl"
      s = run_n_times(method, filepath, file, 60, 5)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
  df.to_csv('numbers/hmm.csv', index=True)
  return  

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
    print(f"+++++++++++++++++++++++++++++++++++++")
    for i in depth :
      print(f"Calculating numbers for {2*(i-1)} many decisions")
      filepath = "experiments/ladder/"
      file = f"ladder{i}_1.dappl" if (method == Method.dappl) else f"ladder{i}_1.pl"
      s = run_n_times(method, filepath, file, 300, 5)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
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
    print(f"+++++++++++++++++++++++++++++++++++++")
    for i in depth :
      print(f"Calculating numbers for "+str(cols)+" many columns, depth " +str(i))
      filepath = "experiments/ladder/"
      file = f"ladder{cols}_{i}.dappl" if (method == Method.dappl) else f"ladder{cols}_{i}.pl"
      s = run_n_times(method, filepath, file, 300, 5)
      if avg_stdev(s) is not None :
        (a,b) = avg_stdev(s)
        df.loc[method.name, f"{i}_mean"] = a
        df.loc[method.name, f"{i}_stdev"] = b
      else : continue
  df.to_csv(f'numbers/ladder_{cols}.csv', index=True)
  return  

