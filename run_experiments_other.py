import subprocess
import os
import numpy as np
from enum import Enum

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
    except :
      timeout = f"TIMEOUT happened after " + str(to) \
                + " seconds when calling " + cmd
      print(timeout)
      break
  return collect

def print_avg_stdev(data : list) :
  if data == [] :
    return
  data_array = np.array(data)
  average = np.mean(data_array) * 1000
  std_dev = np.std(data_array) * 1000
  print(f"Average: {average} ms")
  print(f"Standard Deviation: {std_dev} ms")
  return

def hmm () :
  cols = [1,2,5,10,20, 50,100,200, 500, 1000, 2000]
  gen_cols_cmd = "./_build/install/default/bin/dappl test mdp "
  for i in cols :
    cmd =  gen_cols_cmd + str(i)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
  for method in Method :
    print(f"Doing HMM benchmark on Method " + method.value)
    for i in cols :
      print(f"Calculating numbers for "+str(i)+" many columns")
      filepath = "experiments/mdp/"
      file = "mdp" + str(i) + ".dappl" if (method == Method.dappl) else "mdp" + str(i) + ".pl"
      s = run_n_times(method, filepath, file, 5, 5)
      print_avg_stdev(s)

def ladder (cols : int) :
  depth = [i+1 for i in range(cols)]
  gen_cols_cmd = "./_build/install/default/bin/dappl test ladder "
  for i in depth :
    cmd =  gen_cols_cmd + str(cols) + " " + str(i)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
  for method in Method :
    print(f"Doing Ladder benchmark on Method " + method.value)
    for i in depth :
      print(f"Calculating numbers for "+str(cols)+" many columns, depth " +str(i))
      filepath = "experiments/ladder/"
      file = f"ladder{cols}_{i}.dappl" if (method == Method.dappl) else f"ladder{cols}_{i}.pl"
      s = run_n_times(method, filepath, file, 5, 5)
      print_avg_stdev(s)


  

