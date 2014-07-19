Feature: A graphical editor should be able to colour in

  Scenario: Color a pixel red (A).
    Given I run `graphicz` interactively
    And I type "I 5 6"
    When I type "L 2 3 A"
    And I type "S"
    And I type "X"
    Then the output should contain:
     """
     OOOOO
     OOOOO
     OAOOO
     OOOOO
     OOOOO
     OOOOO
     """
