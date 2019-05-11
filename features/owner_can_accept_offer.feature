Feature: Owner can accept an offer
  As a registered cat owner,
  In order to allow an interested user to host my cat,
  I need to be able to accept the offer

  Background: Offers exists on a listing
    Given the following user exist
      | email         | password   |
      | zane@craft.se | pswrd12345 |
    And the following listings exist for an owner
      | pet_name  | pet_location    | pet_description   | start_date      | end_date      | pet_picture | owner          |
      | Leif      | Gothenburg      | I'm nice          | 2019-06-28      | 2019-06-29    | picture1    | zane@craft.se  |
    Then stop
    And the following offers exists on a listing
      | name   | email           | location      | price  | listing |  
      | Felix  | felix@craft.se  | Gothenburg    | 100    | Leif    |
      | Carla  | carla@craft.se  | Stockholm     | 80     | Leif    |
    And I am logged in as "zane@craft.se"
    Then stop
    And I visit the landing page
  
  Scenario: Owner can accept ONE offer on her listing (HAPPY PATH)
    When I click on "Show listing" within "Leif" section
    Then I should see "Felix"
    And I should see "Carla"
    When I click on "Accept offer" within "Felix" offer
    Then I should see "You have acepted offer from Felix"
    And I should not see "Carla"