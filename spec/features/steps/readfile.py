'''
    Read Behave steps file
'''
from behave import *
import os.path

fh = None
@given('we have a file called "{fname}"')
def step_impl(context,fname):
    if os.path.isfile("../data/" + fname):
        assert True

@given('we have a non-existent file called "{fname}"')
def step_impl(context,fname):
    if not os.path.isfile("../data/" + fname):
        assert True

@when('we open the file "{fname}"')
def step_impl(context, fname):
    fh = open("../data/" + fname)
    assert fh

@then('we have a filehandle object')
def step_impl(context):
    pass

@when('we try to open the file "{fname}"')
def step_impl(context, fname):
    try:
        fh = open("../data/" + fname)
    except Exception,e:
        context.exc = e

@then('we have an error')
def step_impl(context):
    context.exc.message
