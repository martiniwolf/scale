Feature: Serve coffee
    @TestCaseKey=DC-T6
    Scenario: Serve coffee
        
        Given the coffee machine is started
        When I take a coffee
        Then coffee should be served

    Scenario Outline: Messages are based on language
        # Well, sometimes, you just get a coffee
        When I start the coffee machine using language "<language>"
        Then message "<ready_message>" should be displayed

        Examples:
            | language | ready_message |
            | en | Ready |
            | fr | Pret |