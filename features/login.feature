@LGN-01
Feature: LOGIN
  As a User
  I can login

  Scenario Outline: User login
    Given I am on onboarding page
    And I enter "<email>" as email
    And I enter "<password>" as password
    When I click login
    Then I see "<expected message>" as expected message
    Examples:
        |    name   |           email          |    password    |     confirm pass     |      expected message         |
        |  User A   |     usera@gmail.com      |    P1ntuT3st   |       P1ntuT3st      |    Registration Successful    |
        |           |     userb@gmail.com      |    P1ntuT3s    |       P1ntuT3st      |   Wrong Email or Password     |
        |           |                          |                |       P1ntuT3st      |       Enter Valid Email       |
        |           |     usera@gmail.com      |    P1ntuT3s    |       P1ntuT3st      |   Wrong Email or Password     |


