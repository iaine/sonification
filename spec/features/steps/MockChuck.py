'''
   Mock Class for Chuck Interface
'''
import os.path

class MockChuckIntf():

    def accept_args(self,arg_string, expect_extension):
        '''
            Mock method for CLI arguments
        '''
        extension = os.path.splitext(arg_string)[1]

        if extension is not expect_extension:
            return "Incorrect Extension"
