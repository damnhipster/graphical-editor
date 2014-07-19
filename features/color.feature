Feature: A graphical editor should be able to colour in

  Scenario: Color a pixel red (A).
    Given I run `graphicz` interactively
    When I type "I56"
    And I type "L23A"
    And I type "exit"
    Then the output should contain:
     """
     OOOOO
     OOOOO
     OAOOO
     OOOOO
     OOOOO
     OOOOO
     """
