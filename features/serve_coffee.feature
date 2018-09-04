@sprint-1 @JIRA-CMSE-3
Feature: Serve coffee
    # **In order to** enjoy the rest of the day
    # **As a** coffee lover
    # **I can** get coffee from the machine

  @priority-high @JIRA-CMSE-1
  Scenario: Simple use
    # Well, sometimes, you just get a coffee.
    Given the coffee machine is started
    When I take a coffee
    Then coffee should be served
