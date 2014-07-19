Feature: A graphical editor should be able to clear an image

  Scenario: Clear an image
    Given I run `graphicz` interactively
    And I type "I56"
    And I type "L23A"
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
