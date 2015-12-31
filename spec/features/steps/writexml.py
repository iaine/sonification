from behave import given, when, then

class spatial_data():

    def __init__(self):
        self.spatial = None

    def setXCoord(self, coord):
        self.spatial.x  = coord

    def setDuration(self,dur):
        self.spatial.duration =  dur

    def set_filename(self, fname):
        self.spatial.filename = fname

@Given()
def step_impl(context):
    pass

@When()
def step_impl(context):
    pass

@Then()
def step_impl(context):
    pass
