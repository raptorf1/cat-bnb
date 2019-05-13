@javascript
Feature: Registered user cannot make an offer unless she has a profile
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
    When I click on "Show listing" within "Zane" section
    Then I should see "You must Become a Host before you can place offers on a cat"
    When I visit the landing page
    And I click on "Show listing" within "Carla" section
    Then I should see "You must Become a Host before you can place offers on a cat"
