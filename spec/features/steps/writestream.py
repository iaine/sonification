'''
   Functional tests for the Write Stream
'''
from behave import given, when, then
from OSC import OSCClient, OSCMessage

@given('I want to send an integer')
def step_impl (context):
    pass

@given('I want to send a float')
def step_impl (context):
    pass

@given('I want to send two integers with one channel')
def step_impl (context):
    pass

@given('I want to send two floats with one channel')
def step_impl (context):
    pass

rep=0
@given('I want to send {reps} floats with 1 channel')
def step_impl (context, reps):
    rep = reps

@when('I define "{host}" and the port {port} and the number is {flt_one}, and the second is {flt_two}')
def step_impl(context, host, port, flt_one,flt_two):
    client = OSCClient()
    client.connect((host, int(port)))

    if rep > 2:
        for i in range(rep):
            if flt_two > 0.0:
                 client.send(OSCMessage(['/test', flt_one, flt_two]))
            else:
                 client.send(OSCMessage(['/test', flt_one]))
    else:
        if flt_two > 0.0:
            client.send(OSCMessage(['/test', flt_one, flt_two]))
        else:
            client.send(OSCMessage(['/test', flt_one]))

@when('I define "{host}" and the port "{port}" and the integer is {int_one}, and the second is {int_sec}')
def step_impl(context, host, port, int_one, int_sec):
    client = OSCClient()
    client.connect((host, port))
    if int_sec > 0:
        client.send(OSCMessage('/test', int_one, int_sec))
    else:
        client.send(OSCMessage('/test', int_one))

@then('I hear a sound')
def step_impl(context):
    pass

@then('I hear two sounds')
def step_impl(context):
    pass

@then('I hear a sound that lasts for {son_length} seconds')
def step_impl(context,son_length):
    pass
