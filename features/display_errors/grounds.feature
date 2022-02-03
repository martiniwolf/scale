Feature: Grounds
    As a coffee lover
    I have to empty the grounds
    So I don't end up with a total mess around the coffee machine

  Background:
    Given the coffee machine is started
    And I handle everything except the grounds

  Scenario: Message "Empty grounds" is displayed after 30 coffees are taken
    When I take "30" coffees
    Then message "Empty grounds" should be displayed

  Scenario: When the grounds are emptied, message is removed
    Given I take "30" coffees
    When I empty the coffee grounds
    Then message "Ready" should be displayed
