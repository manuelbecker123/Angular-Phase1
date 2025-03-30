Feature: Register, Login, Logout, and Manage Meetings

  Scenario: User registers, logs in, books a meeting, edits and deletes a meeting, and logs out successfully
    Given I navigate to the registration page
    When I fill in the registration form with the following details:
      | name          | email               | password       | repeatPassword  | phoneNumber |
      | Anna Henna     | examplemail1@example.com | Henna123 | Henna123 | +41791751070 |
    And I submit the registration form
    Then I should be redirected to the login page

    Given I am on the login page
    When I enter the following login details:
      | email               | password       |
      | examplemail1@example.com | Henna123 |
    And I click on the login button
    Then I should be redirected to the meetings page

    When I book a meeting with the following details:
      | meetingDate | startTime | title         | numPeople | description              | duration |
      | 8-07-2025  | 10:00     | Team Meeting  | 5         | This meeting has for its purpose to make everyone meet each other. | 1hr      |
    Then I should see a success message for booking the meeting
    
	When I edit a meeting with the following details:
	  | meetingDate | startTime | title         | numPeople | description             | duration | meetingId |
	  | 9-08-2025  | 16:00     | Updated Team Meeting | 10        | Quick update of the team meeting | 1hr      | 65     |
	Then I should see a success message for updating the meeting

    When I delete a meeting
    Then I should see a success message for deleting the meeting

    When I click the logout button
    Then I should be redirected to the homepage
    
    When I enter my email into the subscription form and submit it
    Then I should see a success message for subscribing
