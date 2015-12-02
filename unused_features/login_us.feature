Feature: login_us


  Scenario Outline: LogIn
    Given I wait for the "Welcome" screen to appear
    When I press the menu key
    And I select "action_SignIn" from the menu
    And I enter "<User>" into input field number 1
    And I press the enter button
    And I enter "<Password>" into input field number 2
    And I press the enter button
    And I press "LoginButton"
    Then I should see "Successfully logged in"

    Examples:
      | User |    Password    |
      | Dobby |   123         |

