@javascript
Feature: Registered user can make an offer if she has a profile
  As a site owner
  In order to ensure that every host has a profile
  I want to restrict any registered user without profile to be able to make offers on catlistings

  Scenario:

    Given the following user exist
      | email              | password |
      | george@saloniki.gr | password |

    Given the following listings exist for a user
      | pet_name | pet_location | pet_description | start_date | end_date   | pet_picture                        | user           |
      | Zane     | Gothenburg   | I'm nice        | 2019-06-28 | 2019-06-29 | http://localhost:3000/listings/new | zane@craft.se  |
      | Carla    | Stockholm    | I love cats!    | 2019-05-28 | 2019-06-01 | http://localhost:3000/listings/new | carla@craft.se |

    And I am logged in as "george@saloniki.gr"
    When I visit the landing page
    Then I should see "Show listing" within "Zane" section
    And I should see "Show listing" within "Carla" section
    And I should not see "Make an offer" within "Zane" section
    And I should not see "Make an offer" within "Zane" section
    When I click "Become a host" link
    Then I should be on Create profile page
    When I fill in "Name" with "Boa"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Description" with "I am a nice dude, I love cats"
    And I fill in "Picture" with "https://www.linkedin.com"
    And I click on "Create Profile"
    Then I should be on landing page
    And I should see "You have successfully created a host profile. Now you can apply to host cats."
    Then I should see "Show listing" within "Zane" section
    And I should see "Show listing" within "Carla" section
    And I should see "Make an offer" within "Zane" section
    And I should see "Make an offer" within "Carla" section
    