Feature: User can create a Profile
  As a user
  In order become a host
  I need to create a profile

  Background:
    Given the following user exist
      | email         | password   |
      | boa@snake.se  | pswrd12345 |
    And I am logged in as "boa@snake.se"
    And i visit the landing page

  Scenario: User successfully creates a Profile
    When I click on "Become a host" link
    Then I should be on "Create profile" page
    When I fill "Name" with "Boa"
    And I fill "Location" with "Gothenburg"
    And I fill "Price" with "299"
    And I fill "About" with "I am a nice dude, I love cats"
    And I upload a picture of myself
    And I click on "Create profile"
    Then I should be on landing page
    And I should see "You have successfully created a host profile. Now you can apply to host cats."
