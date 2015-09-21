Feature: Read a File

  Scenario: Read a text file
     Given we have a file of integers called "integers.txt"
     When we open the file
     Then we have a filehandle object

