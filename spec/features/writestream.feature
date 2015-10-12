Feature: Write a data Stream
  
  As a developer 
  I want to be able to stream data to the API
  So that I can produce a sound

  Scenario:
    Given I want to send an integer
    When  I define "127.0.0.1" and the port 4567 and the number is 30, and the second is 0
    Then I hear a sound

    Given I want to send a float
    When  I define "127.0.0.1" and the port 4567 and the number is 30.0, and the second is 0.0
    Then I hear a sound

    Given I want to send two integers with one channel
    When  I define "127.0.0.1" and the port 4567 and the number is 30, and the second is 40
    Then I hear two sounds

    Given I want to send two floats with one channel
    When  I define "127.0.0.1" and the port 4567 and the number is 30.0, and the second is 40.0
    Then I hear two sounds

    Given I want to send 10 floats with 1 channel
    When  I define "127.0.0.1" and the port 4567 and the number is 30.0, and the second is 40.0
    Then I hear a sound that lasts for 10 seconds

#    Given I want to send two integers to two channels
#    When  I define "127.0.0.1" and the port "4567" and the integer is 30, the second is 40
#    Then I hear a sound in each channel

#    Given I want to send two floats to two channels
#    When  I define "127.0.0.1" and the port "4567" and the float is 30.0, the second is 40.0
#    Then I hear a sound in each channel
