Feature: Cut stock

    Background:
        Given the store is ready to service customers
        And a product "Bread" with price 20.50 and stock of 5 exists
        And a product "Jam" with price 80.00 and stock of 10 exists
        And a product "Ham" with price 100.00 and stock of 10 exists

    Scenario: Buy one product
        When I buy "Bread" with quantity 2
        Then stock of "Bread" should be 3

    Scenario: Buy multiple products
        When I buy "Bread" with quantity 3
        And I buy "Ham" with quantity 2
        Then stock of "Bread" should be 2
        Then stock of "Ham" should be 8

        #Jedsadakorn Boonlerd 6410450770