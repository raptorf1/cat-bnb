Feature: Owner can view offers on Listing page
  As a cat owner,
  In order to choose host for my cat
  I need to be able to view the offers for my listing

  Background: Offers exists on a listing
  Given the following offers exists on a listing
    | name   | email           | location      | price  | listing    |    
    | Felix  | felix@craft.se  | Gothenburg    | 100    | Leif       |

  Scenario: Owner can click on listing and see correct offers in that listing 
    Given I visit the landing page
    When I click "Show" within "Leif" offer
    Then I should be on the "Leif" listing page
    And I should see "Felix"
    And I should see "felix@craft.se"
    And I should see "Gothenburg"
    And I should see "100 kr"
    And I should see "Accept offer"