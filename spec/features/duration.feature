Feature: Assigning a duration to a tone

As a user
I want to define the length of a tone
So that the defined sound is the defined length

  Scenario
    Given a file called "play.wav"
    When I define the duration as "6" seconds
    Then I get a "6" second burst of sound
