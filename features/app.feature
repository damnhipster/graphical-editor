Feature: A graphical editor

  Scenario: Can test command line apps
    When I run `cat /etc/hosts`
    Then the output should not contain "hello world"
