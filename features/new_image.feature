Feature: A graphical editor should create a new image

  Scenario: Create a new 5 x 6 image with all pixels coloured white (O).
    Given I run `graphicz` interactively
    When I type "I56"
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
