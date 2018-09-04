@sprint-2 @JIRA-CMSE-18
Feature: Can be configured
    # **In order to** get the best possible coffees
    # **As a** geeky coffee lover
    # **I can** configure it to match my needs

  @priority-medium
  Scenario: Display settings
    Given the coffee machine is started
    When I switch to settings mode
    Then displayed message is:
      """
      Settings:
       - 1: water hardness
       - 2: grinder
      """

  @priority-high
  Scenario: Default settings
    Given the coffee machine is started
    When I switch to settings mode
    Then settings should be:
      | water hardness | 2            |
      | grinder               | medium |
