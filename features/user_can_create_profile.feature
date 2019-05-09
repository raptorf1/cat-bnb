@javascript
Feature: User can create a Host Profile
  As a registered user
  In order to be able to apply for becoming a cat host
  I need to create a host profile

  Background:
    Given the following user exist
      | email         | password   |
      | boa@snake.se  | pswrd12345 |

  Scenario: Registered user tries to create a Host Profile while not logged in
    Given I visit the landing page
    And I click "Become a host" link
    Then I should be on the Log in page
    And I fill "Email" with "boa@snake.se"
    And I fill "Password" with "pswrd12345"
    Then I should be on Create profile page  

  Scenario: User successfully creates a Host Profile (happy path) 
    Given I am logged in as "boa@snake.se"
    And I visit the landing page
    When I click "Become a host" link
    Then I should be on Create profile page
    When I fill in "Name" with "Boa"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Description" with "I am a nice dude, I love cats"
    And I fill in "Picture" with "https://www.linkedin.com"
    And I click on "Create Profile"
    Then I should be on landing page
    And I should see "You have successfully created a host profile. Now you can apply to host cats."
