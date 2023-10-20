import subprocess
import os
import numpy as np

## For dappl

# Generate test files 
command = "./_build/install/default/bin/dappl"

def gen_test (n : int) :  
    cmd = command + " test bn " + str(n)
    subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    return

# Custom commands to run MEU time

def run_asia (n : int, m :int)  :
    cmd = command+ " run experiments/bn/processed/asia_" \
            + str(n) + "_method1.dappl"
    result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    return float(result.stdout.split(" ")[-1])
def run_earthquake (n : int, m :int)  :
    cmd = command+ " run experiments/bn/processed/earthquake_" \
            + str(n) + "_method1.dappl"
    result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    return float(result.stdout.split(" ")[-1])
def run_survey (n : int, m :int)  :
    cmd = command+ " run experiments/bn/processed/survey_" \
            + str(n) + "_method1.dappl"
    result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    return float(result.stdout.split(" ")[-1])

def print_avg_stdev(data : list) :
    data_array = np.array(data)
    average = np.mean(data_array) * 1000
    std_dev = np.std(data_array) * 1000
    print(f"Average: {average}")
    print(f"Standard Deviation: {std_dev}")
    return

def do_all (n : int) :
    gen_test(n)
    print("Generated "+str(n)+" tests.\n")
    asia_times_method1 = []
    asia_times_method2 = []
    earthquake_times_method1 = []
    earthquake_times_method2 = []
    survey_times_method1 = []
    survey_times_method2 = []
    for i in range(n) :
        for _ in range(10):
            asia_times_method1.append(run_asia(i,1))
            asia_times_method2.append(run_asia(i,2))
            earthquake_times_method1.append(run_earthquake(i,1))
            earthquake_times_method2.append(run_earthquake(i,2))
            survey_times_method1.append(run_survey(i,1))
            survey_times_method2.append(run_survey(i,2))
    print(f"For asia:")
    print(f"Method 1:")
    print_avg_stdev(asia_times_method1)
    print(f"Method 2:")
    print_avg_stdev(asia_times_method2)
    print(f"For earthquake:")
    print(f"Method 1:")
    print_avg_stdev(earthquake_times_method1)
    print(f"Method 2:")
    print_avg_stdev(earthquake_times_method2)
    print(f"For survey:")
    print(f"Method 1:")
    print_avg_stdev(survey_times_method1)
    print(f"Method 2:")
    print_avg_stdev(survey_times_method2)

## For Problog

directory_path = "experiments/bn/problog" 

# Get a list of all filenames in the directory
filenames = os.listdir(directory_path)

def exec_problog (file : str):
    cmd = "problog dt -v " + directory_path + "/"+file
    result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    relevant = result.stdout.split('\n')[2:5]
    asdf = list(map(lambda x: x.split(" ")[-1], relevant))
    jkl = list(map(lambda x : float(x[:-1]), asdf))
    return sum(jkl)
    
def run_problog () :
    asia_times_method1 = []
    asia_times_method2 = []
    earthquake_times_method1 = []
    earthquake_times_method2 = []
    survey_times_method1 = []
    survey_times_method2 = []
    for file in filenames:
        f = exec_problog (file)
        l = file.split("_")
        bntype = l[0]
        method = l[1]
        if bntype == "asia" :
            if method == "1" :
                asia_times_method1.append(f)
            else : 
                asia_times_method2.append(f)
        elif bntype == "earthquake" :
            if method == "1" :
                earthquake_times_method1.append(f)
            else : 
                earthquake_times_method2.append(f)
        else:
            if method == "1" :
                survey_times_method1.append(f)
            else : 
                survey_times_method2.append(f)
    print(f"For asia:")
    print(f"Method 1:")
    print_avg_stdev(asia_times_method1)
    print(f"Method 2:")
    print_avg_stdev(asia_times_method2)
    print(f"For earthquake:")
    print(f"Method 1:")
    print_avg_stdev(earthquake_times_method1)
    print(f"Method 2:")
    print_avg_stdev(earthquake_times_method2)
    print(f"For survey:")
    print(f"Method 1:")
    print_avg_stdev(survey_times_method1)
    print(f"Method 2:")
    print_avg_stdev(survey_times_method2)
    return

def exec_derk (file : str):
    cmd = "python3 derkinderen/maxeu.py " + directory_path + "/"+file
    result = subprocess.run(cmd, \
                        shell=True, \
                        stdout=subprocess.PIPE, \
                        stderr=subprocess.PIPE, \
                        text=True)
    relevant = result.stdout.split('\n')
    l = [relevant[0], relevant[4], relevant[7]]
    l = list(map(lambda x : float(x.split(" ")[-2]), l))
    return sum(l)

def run_derk () :
    asia_times_method1 = []
    asia_times_method2 = []
    earthquake_times_method1 = []
    earthquake_times_method2 = []
    survey_times_method1 = []
    survey_times_method2 = []
    for file in filenames:
        f = exec_derk (file)
        l = file.split("_")
        bntype = l[0]
        method = l[1]
        if bntype == "asia" :
            if method == "1" :
                asia_times_method1.append(f)
            else : 
                asia_times_method2.append(f)
        elif bntype == "earthquake" :
            if method == "1" :
                earthquake_times_method1.append(f)
            else : 
                earthquake_times_method2.append(f)
        else:
            if method == "1" :
                survey_times_method1.append(f)
            else : 
                survey_times_method2.append(f)
    print(f"For asia:")
    print(f"Method 1:")
    print_avg_stdev(asia_times_method1)
    print(f"Method 2:")
    print_avg_stdev(asia_times_method2)
    print(f"For earthquake:")
    print(f"Method 1:")
    print_avg_stdev(earthquake_times_method1)
    print(f"Method 2:")
    print_avg_stdev(earthquake_times_method2)
    print(f"For survey:")
    print(f"Method 1:")
    print_avg_stdev(survey_times_method1)
    print(f"Method 2:")
    print_avg_stdev(survey_times_method2)
    return

print("THIS IS FOR DAPPL")
do_all(10)
print("\nTHIS IS FOR PROBLOG")
run_problog()
print("\nTHIS IS FOR DERKINDEREN")
run_derk()

                


    