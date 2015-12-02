Feature: Dobby


  Scenario Outline: Dobby LogIn
    Given I wait for the "MainActivity" screen to appear
    When I press "buttonLogin"
    And I enter "<User>" into input field number 1
    And I press the enter button
    And I enter "<Password>" into input field number 2
    And I press the enter button
    And I press "loginConfirm"
    Then I should see "Successfully logged in"
	
	Examples:
	| User |    Password    |
	| Dobby |   123         |


  Scenario Outline: Dobby LogIn failed - User not found
    Given I wait for the "MainActivity" screen to appear
    When I press "buttonLogin"
    And I enter "<User>" into input field number 1
    And I press the enter button
    And I enter "<Password>" into input field number 2
    And I press the enter button
    And I press "loginConfirm"
    Then I should see "User not found"

	Examples:
	| User |    Password    |
	| Daniel |   123         |
	| Marie |   123         |
	| Martin |   123         |
	| Nico |   123         |





  Scenario Outline: Dobby LogIn failed - Wrong Password
    Given I wait for the "MainActivity" screen to appear
    When I press "buttonLogin"
    And I enter "<User>" into input field number 1
    And I press the enter button
    And I enter "<Password>" into input field number 2
    And I press the enter button
    And I press "loginConfirm"
    Then I should see "Wrong Password"

	Examples:
	| User |    Password    |
	| Dobby |   4444        |
	| Dobby |   235         |
	| Dobby |   23433       |
	| Dobby |   234         |


  Scenario Outline: Dobby LogOut
    Given I wait for the "MainActivity" screen to appear
    And I press "buttonLogin"
    And I enter "<User>" into input field number 1
    And I press the enter button
    And I enter "<Password>" into input field number 2
    And I press the enter button
    And I press "loginConfirm"
    And I should see "Successfully logged in"
    When I press "buttonLogout"
    Then I should see "Successfully logged out"

	Examples:
	| User |    Password    |
	| Dobby |   123         |