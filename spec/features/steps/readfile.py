'''
    Read Behave steps file
'''
from behave import *
import os.path

fh = None
@given('we have a file of integers called "integers.txt"')
def step_impl(context):
    if os.path.isfile("../data/integers.txt"):
        assert True
    

@when('we open the file')
def step_impl(context):
    fh = open("../data/integers.txt")
    assert fh

@then('we have a filehandle object')
def step_impl(context):
    pass
