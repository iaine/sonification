'''
    Parse the Node tests XML
'''

import xml.etree.ElementTree as ET


def parse_nose(filename):
    '''
       Parse the XML
    '''

    tree = ET.parse(filename)
    root = tree.getroot()

    print root.tag, _get_attrib(root.attrib)

    for child in root:
        for elem in child:
            print child.tag, _get_attrib(child.attrib) + ':' + _get_attrib(elem.attrib)

def _get_attrib(attributes):
    '''
        Convert attributes into string
    '''
    attrib_string = ''

    for label, reason in attributes.iteritems():
        attrib_string += label + ':' + reason + ', '

    return attrib_string[:-2]

parse_nose('nosetests.xml')
