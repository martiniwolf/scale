Feature: Nominal case
    As a coffee lover
    I can get coffee from the machine
    So I can enjoy the rest of the day

  Scenario: Simple use
    Given the coffee machine is started
    When I take a coffee
    Then coffee should be served

  Scenario Outline: Messages are based on language
    When I start the coffee machine "<lang>"
    Then message "<ready_message>" should be displayed

    Examples:
      | lang | ready_message | hiptest-uid |
      | en | Ready |  |
      | fr | Pret |  |

  Scenario: No messages are displayed when machine is shut down
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed
