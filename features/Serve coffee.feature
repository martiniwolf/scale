Feature: Serve coffee

    Scenario: Simple use
        
        Given the coffee machine is started
        When I take a coffee
        Then coffee should be served