Feature: Beans


  Scenario: Beans run out
    Given the coffee machine is started
    When thirty eight coffees are taken without filling beans
    Then coffee should be served
    And message "Fill beans" should be displayed
    When I take "2" coffees
    Then coffee should be served
    And message "Fill beans" should be displayed
    When I take a coffee
    Then coffee should not be served
