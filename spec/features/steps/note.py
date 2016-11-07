'''
   Note tests
'''
from behave import given, when, then, model
import subprocess
from ssh_client import SSHClient as shc

@given('I have no output')
def step_impl(context):
    pass

@when('I provide a float {input}')
def step_impl(context, input):
    p = subprocess.check_call(['chuck', 'test.ck:'+input])
    if not p.stderr:
        assert True
    else:
        assert False

@then('I hear a middle C')
step_impl(context):
    test_data = shc.get_data("redis-server get note")

    ok_(test_data)
    assert_true(440 in test_data[1])
