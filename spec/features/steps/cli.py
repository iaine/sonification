'''
   Tests for  Command Line interface
   @author Iain Emsley
'''
from behave import given, when, then, model
import subprocess

resp = '';
@given(u'a filename')
def step_impl(context):
    pass

@when('I run "{chuck}" with "{fname}"')
def step_impl(context, chuck, fname):
    #raise NotImplementedError(u'STEP: When I use the "filename"')
    resp = subprocess.call(['chuck', '../mock/' + chuck + ':' + fname])

@then('I get "{response}"')
def step_impl(context, response):
    '''
        Use Subprocess to run Chuck file on CLI
    '''
    assert resp    
