@javascript
Feature: Host can make an offer on a listing
  As a host,
  In order to make some money,
  I want to be able to make an offer on a listing

  Background:
    Given the following listings exist for a user
      | pet_name | pet_location | pet_description | start_date | end_date   | pet_picture            | user          |
      | Zane     | Gothenburg   | I'm nice        | 2019-06-28 | 2019-06-29 | http://localhost:3000/ | zane@craft.se |
      | Carla    | Stockholm    | I love cats!    | 2019-05-28 | 2019-06-01 | http://localhost:3000/ | carla@zane.se |

    Given the following user exist
      | email          | password   |
      | boa@snake.se   | pswrd12345 |
      | zane@craft.se  | passs1     |
      | carla@craft.se | passs2     |

    Given I am logged in as "boa@snake.se"
    When I visit the landing page
    And I click "Become a host" link
    Then I should be on Create profile page
    And I fill in "Name" with "Boa"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Description" with "I am a nice dude, I love cats"
    And I fill in "Picture" with "https://www.linkedin.com"
    And I click on "Create Profile"

  Scenario: Host can successfully create an offer    
    Given I click on "Make an offer" within "Zane" section
    And I should be on the "Zane" listing page
    And I should see "Create your offer"
    When I fill in "Name" with "Steffe"
    And I fill in "Email" with "steffe@gmail.com"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Price" with "100kr"
    When I click "Create offer" button
    Then I should be on landing page

  Scenario: Host can not create an offer when not all the fields are filled in.
    When I click on "Make an offer" within "Zane" section
    Then I should be on the "Zane" listing page
    And I should see "Create your offer"
    And I fill in "Name" with "Steffe"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Price" with "100kr"
    When I click "Create offer" button
    Then I should see "Please fill in all fields correctly"
