'''
   Script to mock the entropy
'''

import subprocess
import random

def entropy():
    """
       Use Random generator and round to 2 dp
    """
    return 100 * round(random.random(),2)


for i in range(100):
    ent = entropy()
    print ent
    #subprocess.call(["chuck", "entropy.ck:"+ str(ent)])
