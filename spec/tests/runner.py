'''
   Extracts the test function name and runs the test
'''
import sys
import subprocess

def _run_test(fname):
    '''
       Method to run the Chuck test
    '''
    test = subprocess.check_call(["chuck", fname])

if __name__ == "__main__":

    f = sys.argv[1]
    if not f:
        sys.exit(0)

    _run_test(f)
