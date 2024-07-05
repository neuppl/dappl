import subprocess
import numpy as np
from enum import Enum


#######################
# This file includes general commands that are used in the experiments.
#######################

class Method(Enum):
  dappl = "./_build/install/default/bin/dappl run "
  problog = "problog dt -v "
  derk = "python3.11 derkinderen/maxeu.py "

# Runs a process and collects the time taken.
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
      meu = result.stdout.split("\n")[1]
      return float(meu.split(" ")[-1])
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

# Runs a process n times and collects the time taken.
def run_n_times (method : Method, filepath : str, file : str, to : int, times : int) :
  cmd = method.value + filepath + file
  # print(cmd)
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

# Takes a list of times taken and returns the average and standard deviation.
def avg_stdev(data : list) :
  if data == [] :
    return
  data_array = np.array(data)
  average = np.mean(data_array) * 1000
  std_dev = np.std(data_array) * 1000
  return (average, std_dev)
