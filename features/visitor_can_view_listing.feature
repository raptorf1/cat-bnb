Feature: Visitor can view listing
  As a Visitor
  In order to find a suitable host for my cat
  I want to be able to view listings on the landing page

  Background:
    Given the following listings exist for a user
      | pet_name | pet_location | pet_description | start_date | end_date   | pet_picture | user           |
      | Zane     | Gothenburg   | I'm nice        | 2019-06-28 | 2019-06-29 | picture1    | zane@craft.se  |
      | Carla    | Stockholm    | I love cats!    | 2019-05-28 | 2019-06-01 | picture2    | carla@craft.se |

  Scenario:
    When I visit the landing page
    Then I should see "Zane"
    And I should see "Gothenburg" within "Zane" section
    And I should see "I'm nice" within "Zane" section
    And I should see "2019-06-28" within "Zane" section
    And I should see "2019-06-29" within "Zane" section
    # And I should see "picture1" within "Zane" section
