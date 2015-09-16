#!/bin/bash


pylint --output-format=parseable --files-output=y *.py

python -m doctest *.py
#nosetests --with-coverage --cover-package a 
nosetests --with-xunit test*.py
