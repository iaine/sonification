Feature: Read a File

  Scenario: Read a text file
     Given we have a file called "integers.txt"
     When we open the file "integers.txt"
     Then we have a filehandle object

  Scenario: Read a wav file
     Given we have a file called "test.wav"
     When we open the file "test.wav"
     Then we have a filehandle object

  Scenario: Read a non-existent file
     Given we have a non-existent file called "non.txt"
     When we try to open the file "non.txt"
     Then we have an error

  Scenario: Read incorrect file type
     Given we have a file called "test.mp3"
     When we open the file "test.mp3"
     Then we have a file error
