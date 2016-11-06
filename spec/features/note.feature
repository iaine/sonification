Feature: Hear a sound 
As a user 
When I provide an input
So that I hear a note

  Scenario: hear a simple tone
    Given I have no output
    When I provide a float 440
    Then I hear a middle C
