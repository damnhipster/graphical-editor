Feature: A graphical editor should show an image

  Scenario: Don't show a new image
    Given I run `graphicz` interactively
    When I type "I 5 6"
    And I type "X"
    Then the output should not contain:
     """
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     """
