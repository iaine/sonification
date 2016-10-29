Feature: Writing a log file to the file system

  Scenario: Write a log file
    Given I have no log files in "log"
    When I write "log.txt"
    Then I can read "log/log.txt"

  
