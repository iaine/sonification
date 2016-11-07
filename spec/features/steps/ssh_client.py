'''
   SSH Client
'''

class ssh_client():
    '''
       Wrapper to do the remote calls
    '''

    ssh = None

    def run_command(self, host, cmd, slp_time):
        '''
           Runs the command on the SSH box
        '''

        try:
            ssh = paramiko.SSHClient()
            ssh.connect(host)
        except paramiko.AuthenticationException, pe:
            print(pe)
        

            stdin, stdout, stderr = ssh.exec_command(cmd)

            if stdout.channel.exit_status_ready(): 
                raise Exception("SSH Channel failed")
            #if provided, parent waits
            if slp_time:  time.sleep(slp_time)

            ssh.close()

        except Exception, e:
            print (e)

    def get_data(self, host, cmd):

        data = []

        try:
            ssh = paramiko.SSHClient()
            ssh.connect(host)

            stdin, stdout, stderr = ssh.exec_command(cmd)

            if stdout.channel.exit_status_ready():
                raise Exception("SSH Channel failed")

            key = host + "::note"

            while stdout.channel.ready_recv:
                r.lpush(key, stdout.ready_recv(1024)) 

            ssh.close()

        except paramiko.AuthenticationException, pe:
            print(pe)

        return data
