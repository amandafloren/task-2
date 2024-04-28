@REG-01
Feature: Registration
  As a User
  I can create a new account

  Scenario Outline: User registration
    Given I am on onboarding page
    When I click create account
    And I enter "<name>" as name
    And I enter "<email>" as email
    And I enter "<password>" as password
    And I enter "<confirm pass>" as confirm password
    When I click register
    Then I see "<expected message>" as expected message
    Examples:
        |    name   |           email          |    password    |     confirm pass     |      expected message         |
        |  User A   |     usera@gmail.com      |    P1ntuT3st   |       P1ntuT3st      |    Registration Successful    |
        |           |     userb@gmail.com      |    P1ntuT3st   |       P1ntuT3st      |        Enter Full Name        |
        |  User C   |           userc          |    P1ntuT3st   |       P1ntuT3st      |       Enter Valid Email       |
        |  User D   |     userd@gmail.com      |                |       P1ntuT3st      |         Enter Password        |
        |  User E   |     usere@gmail.com      |    P1ntuT3s    |       P1ntuT3st      |   Password Does Not Matches   |


