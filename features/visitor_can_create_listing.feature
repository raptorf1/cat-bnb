Feature: Visitor can create listing
  As a Visitor
  In order to publish my listing
  I would like to be able to submit listing form and see it on the landing page

  Background:
    Given I visit the New listings page

  Scenario: Visitor can succesfully create a listing
    When I fill in "Pet name" with "Leif"
    And I fill in "Pet location" with "Stockholm"
    And I fill in "Pet description" with "Cutest cat ever"
    And I fill in "Start date" with "2019-06-28"
    And I fill in "End date" with "2019-06-29"
    And I fill in "Pet picture" with "string"
    And I click "Create Listing" button
    Then I should be on landing page
    And I should see "Leif"
    And I should see "Stockholm" within "Leif" section
    And I should see "Cutest cat ever" within "Leif" section
    And I should see "2019-06-28" within "Leif" section
    And I should see "2019-06-29" within "Leif" section
    And I should see "string" within "Leif" section
  
  Scenario: Visitor can not create a listing when not all fields are filled in
    When I click "Create Listing" button
    Then I should see "Please fill in all fields"