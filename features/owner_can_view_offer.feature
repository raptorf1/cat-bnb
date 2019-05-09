Feature: Owner can view offers on Listing page
  As a cat owner,
  In order to choose host for my cat
  I need to be able to view the offers for my listing

  Background: Listing and offer exists
    # Given the following listings exist 
    # | pet_name  | pet_location    | pet_description   | start_date      | end_date      | pet_picture |
    # | Leif      | Gothenburg      | I'm nice          | 2019-06-28      | 2019-06-29    | picture1    |

  Given the following offers exists on a listing
    | name   | email       | price  | listing ID |    
    | Felix  | Gothenburg  | 100    | 1          |

  Scenario: Owner can click on listing and see correct offers in that listing 
    Given I visit the landing page
    When I click "Show" within "Leif" offer
    Then I should be on the "Leif" listing page
    And I should see "Felix"
    And I should see "Gothenburg"
    And I should see "100 kr"
    And I should see "Accept offer"