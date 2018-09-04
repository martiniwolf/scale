@sprint-3 @JIRA-CMSE-17
Feature: Support internationalisation
    # **In order to** practice my use of greetings in several languages
    # **As a** polyglot coffee lover
    # **I can** select the language on the coffee machine

  @priority-medium
  Scenario Outline: Messages are based on language
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | language | ready_message | hiptest-uid |
      | en | Ready |  |
      | fr | Pret |  |

  @priority-medium
  Scenario: No messages are displayed when machine is shut down
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed
