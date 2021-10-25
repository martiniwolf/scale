Feature: Serve coffee
    @TestCaseKey=DC-T6
    Scenario: Serve coffee
        
        Given the coffee machine is started
        When I take a coffee
        Then coffee should be served