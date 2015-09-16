import sys
import csv

'''
   Convert use case CSV into Use Case template or 
   Cucumber feature

   @param use or feature to convert into use case 
    or feature
'''

def _convert():
    '''
        
    '''
    pass

def _write(use_cases, ftype):
    '''
       Write the data to file
    '''
    out_file = use_cases["id"]
    if ftype == "userstory":
        out_file = out_file + ".feature"

    with open(out_file, 'wb') as fh:
        if ftype == "usecases":
            fh.write(' Id:' + use_cases["id"] + '\n Case: ' + use_cases["feature"] + '\n Description' + use_cases["desc"])

    fh.closed
    print "File printed is %s",use_cases['id']

def convert_file(name):
    '''
       Open file and read
    '''
    usecases = []
    
    with open(name, 'rb') as f:
        cases= csv.reader(f, delimiter=',', quotechar='|')

        for case in cases:
            single_case = {'id': case[0], 'feature': case[1], 'desc': case[2]}
            usecases.append(single_case)

    return usecases

if __name__ == "__main__":

    try:
        fname = sys.argv[1]
        if fname is None:
            raise Exception("No file name given")

        for caseid in convert_file(fname):
            _write(caseid, "usecases")

    except Exception, e:
        print e
