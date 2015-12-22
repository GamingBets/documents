Feature: Feedback
  as a user
  I want to send a ticket to an admin
  Scenario: logged in user opens the feedback feature
    Given I am logged in as a user
    When I open the feedback page
    Then the feedback page for logged in users is displayed correctly

  Scenario: guest opens the feedback feature
    Given I am not logged in as a user
    When I open the feedback page
    Then the feedback page for guests is displayed corrrectly

  Scenario: guest does not enter an e-mail/enters an incorrect e-mail
    Given I opened the feedback page as a guest
    And I did not enter an e-mail adress/entered a wrong e-mail adress
    When I send the ticket
    Then an error message appears

  Scenario: guest sends ticket
    Given I opened the feedback page as a guest
    And entered all required information correctly
    When I send the ticket
    Then A new ticket is created and send to the admin

  Scenario: logged in user sends ticket
    Given I opened the feedback page while I'm logged in
    And entered all required information correctly
    When I send the ticket
    Then A new ticket is created and send to the admin