Feature: Water


  Scenario: Water runs away
    Given the coffee machine is started
    When fifty coffees have been taken without filling the tank
    Then message "Fill tank" should be displayed
    When I take a coffee
    Then coffee should be served
    When I take "10" coffees
    Then coffee should not be served
    And message "Fill tank" should be displayed
    When I fill the water tank
    Then message "Ready" should be displayed
