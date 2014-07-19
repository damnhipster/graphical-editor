Feature: A graphical editor should be able to clear an image

  Scenario: Clear an image
    Given I run `graphicz` interactively
    And I type "I 5 6"
    And I type "L 2 3 A"
    When I type "C"
    And I type "X"
    Then the output should contain:
     """
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     """
