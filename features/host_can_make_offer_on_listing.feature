Feature: Host can make an offer on a listing
  As a host,
  In order to make some money,
  I want to be able to make an offer on a listing

  Background:
    Given the following listings exist
    | pet_name  | pet_location    | pet_description   | start_date      | end_date      | pet_picture |
    | Zane      | Gothenburg      | I'm nice          | 2019-06-28      | 2019-06-29    | picture1    |
    | Carla     | Stockholm       | I love cats!      | 2019-05-28      | 2019-06-01    | picture2    |

    When I visit the landing page
    Then I should see "Zane"
    And I should see "Gothenburg" within "Zane" section
    And I should see "I'm nice" within "Zane" section
    And I should see "2019-06-28" within "Zane" section
    And I should see "2019-06-29" within "Zane" section
    And I should see "picture1" within "Zane" section
  
  Scenario:
    When I click "Make an offer" within "Zane" section
    Then I should be on the "Zane" listing page
    Then I should see "Create your offer"
    And I fill in "Name" with "Steffe"
    And I fill in "Email" with "steffe@gmail.com"
    And I fill in "Location" with "Gothenburg"
    And I fill in "Price" with "100kr"
    When I click "Create offer" button
    Then I should be on the landing page