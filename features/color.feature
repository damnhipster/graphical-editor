Feature: A graphical editor should be able to colour in

  Scenario: Color a pixel red (A).
    Given I run `graphicz` interactively
    And I type "I56"
    When I type "L23A"
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
