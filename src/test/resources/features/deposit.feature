Feature: deposit
    As a customer
    I want to deposit to my account using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit amount less than 0
    When I deposit -100 to ATM
    Then my account balance is 200

Scenario: Deposit amount more than 0
    When I deposit <amount> to ATM
    Then my account balance is <balance>
    Examples:
        |   amount  |   balance |
        |   0       |   200     |
        |   10      |   210     |