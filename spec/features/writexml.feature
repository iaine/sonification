Feature: Sending Spatial Data to the sonification
  In order to define spatial features in the toolkit
  As a designer
  I want to send data in Spatial XML

  Scenario: Transferring data wih ASDF format
    Given I want to use "play.wav"
    And define the X axis as 20
    And a duration of 100 ms
    When I send the data as an ASDF formated file
    I should be a sound for 100 ms 
