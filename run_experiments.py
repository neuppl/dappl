import subprocess
import os

# Generate test files 

def gen_bn (n : int) :
    return "dappl test bn " + str(n)

result = subprocess.run(['zsh', '-ic', gen_bn(10)], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

print(result.stdout)

def run_asia (n : int, m :int)  :
    return "dappl run experiments/bn/processed/asia_" \
            + str(n) + "_method1.dappl"
def run_earthquake (n : int, m :int)  :
    return "dappl run experiments/bn/processed/earthquake_" \
            + str(n) + "_method" + str(m)+".dappl"
def run_survey (n : int, m :int)  :
    return "dappl run experiments/bn/processed/survey_" \
            + str(n) + "_method" + str(m)+".dappl"

def take_result (c) :
    subprocess.run(c,\
                    shell=True,\
                    stdout=subprocess.PIPE,\
                    stderr=subprocess.PIPE,\
                    text=True)
thingy = []
for i in range(2) :
    thingy.append(take_result(run_asia(i, 1))) 

# print(thingy)
    