Feature: A user should be able to quit the graphical editor

  Scenario: User quits
    Given I run `graphicz` interactively
    When I type "X"
    Then the exit status should be 0
