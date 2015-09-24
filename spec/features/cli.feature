Feature: Run the system using Command Line arguments
  As a user
  I want to specify command line arguments
  So that I can integrate API into a pipeline

  Scenario: Run a Chuck process with command line (RowFixture Table)

    Given a filename
    When I run "MockCli.ck" with "test.txt"
    Then I get "Success"

    Given a filename
    When I run "MockCli.ck" with "test.wav"
    Then I get "Success"

    Given a filename
    When I run "MockCli.ck" with "test.mp3"
    Then I get "MP3 is not supported"
