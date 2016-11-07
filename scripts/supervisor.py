'''
   Supervisor for ChucK processes
'''

from subprocess import popen

restart = 5
proc_start = 0

proc_list = []

command = "chuck oscclient.sh"

#do we want to add a child or just use the start link?

def start_link(proc_list, proc_start):
    '''
      Function to start the process
    '''
    #keep the restart whilst under restart number
    #get the PID of the process
    if proc_start < restart:

        proc = popen(command, popen.stdout, popen.stderr)
        proc_list.append(proc.pid)

        if proc.stderr:
            proc_start += 1
            start(proc_start)

def stop(proc_list):
    '''
       Stop the ChucK process
    '''
    for p in proc_list:
        popen("kill " + p, popen.stdout, popen.stderr)
    
    if proc.stderr:
        raise Exception(proc.stderr)
        sys.exit()


if __name__ == "__main__":
    if sys.argv[1] == "start":
        start_link(proc_start, proc_list)
    elif sys.argv[1] == "stop":
        stop(proc_list)
    else:
        print "We do not support " + sys.argv[1]
