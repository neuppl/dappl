from itertools import chain

import pandas as pd
from experiments.bn import BN, bn, bn_gen, run_bn
from experiments.framework import Method, avg_stdev

# Bayesian network experiments
def kick_tire(n : int) :
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
                l = l + run_bn(method, bn, lbl, ty, 60, 5)
            if avg_stdev(l) is not None :
              (a,b) = avg_stdev(l)
              avg_str = f"{bn.name}_{ty}_mean"
              stdev_str = f"{bn.name}_{ty}_stdev"
              df.loc[method.name, avg_str] = a
              df.loc[method.name, stdev_str] = b
            else : continue
  df.to_csv('numbers/bn.csv', index=True)
  return

kick_tire(1)