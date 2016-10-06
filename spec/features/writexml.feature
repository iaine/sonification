Feature: Writing log data

  Scenario: Writing a log file
    Given I want to write a log file called testlog.txt
    When I want to write 440 for 200 ms
    Then I find a file called testlog.txt

    Given I want to write a log file called testlog.txt
    When I want to write 440 for 200 ms
    Then the first line is 440:200
