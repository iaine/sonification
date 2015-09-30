'''
   Functional tests for the Write Stream
'''
import pyosc
from behave import given, when, then
from OSC import OSCClient, OSCMessage

@given('I have a process listening on OSC')
def step_impl (context):
    pass

@when('I send a {mtype} in a message to port {port} on {host}')
def step_impl(context, mtype, port, host):
    client = OSCClient()
    client.connect((host, port))

    client.send(OSCMessage('/test', mtype))

@then('I get no response')
def step_impl(context):
    pass
