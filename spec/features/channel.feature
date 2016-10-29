Feature: Listen to a sound on a channel

  Scenario:
    Given that I have a text file called "1605.txt"
    When I call cli.ck with the filename
    Then I hear some audio

  Scenario:
    Given that I have two texts, "1603.txt" and "1605.txt"
    When I call cli.ck with the names
    Then I hear two streams


  Scenario: Assigning a channel
    Given I have 2 channels
    When I assign 69 to channel 1
    Then I hear a 440 Hz frequency
