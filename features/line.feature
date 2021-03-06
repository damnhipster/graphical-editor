Feature: A graphical editor should be able to draw a line

  Scenario: Draw a vertical line
    Given I run `graphicz` interactively
    When I type "I 5 6"
    And I type "V 2 3 4 W"
    And I type "S"
    And I type "X"
    Then the output should contain:
     """
     OOOOO
     OOOOO
     OWOOO
     OWOOO
     OOOOO
     OOOOO
     """

  Scenario: Draw a horizontal line
    Given I run `graphicz` interactively
    When I type "I 5 6"
    And I type "H 3 4 2 Z"
    And I type "S"
    And I type "X"
    Then the output should contain:
     """
     OOOOO
     OOZZO
     OOOOO
     OOOOO
     OOOOO
     OOOOO
     """
