'''
   Script to extract documentation
'''

import re
from os import listdir
from os.path import basename, isfile, join

def clean():
    pass

list_of_files = [f for f in listdir('../src') if isfile(join('../src/', f))]

for fi in list_of_files:
    #open the file and parse for C/C++ style comments into list
    single = open('../src/' + fi, 'r').read()
    doc_list = re.findall(r"/[^/]*/",str(single), re.S)

    for doc in doc_list:
        #remove the file extension and write the data out
        with open("../docs/"  +  basename(fi)[:-3] + ".md", "wb") as fh:
            fh.write(bytes(doc, 'UTF-8'))
