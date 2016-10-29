Feature: Writing sonification data in MEI XML

  Scenario: Writing a file
    Given I have no files in "data" directory
    When I write "a.xml"
    Then I find a file in "data" called "a.xml"

  Scenario: Writing an encoding
    Given I have no files in "data" directory
    When I write "sonify.xml"
    Then the first line contains "root"

  Scenario: Writing a note
    Given I have no files in "data" directory
    When I write 400 Hz for 200ms
    Then the first note is "<note dur=200>"
