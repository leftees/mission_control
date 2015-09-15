Feature: Rovers are controlled via an input file

  Scenario: Rovers are commanded using an input file
    Given a file named "fixtures/input" with:
      """5 5
      1 2 N
      LMLMLMLMM
      3 3 E
      MMRMMRMRRM
      """
    When I run `bin/mission_control fixtures/input`
    Then the stdout should contain:
      """
      1 3 N
      5 1 E
      """
