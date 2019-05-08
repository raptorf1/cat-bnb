Feature: Visitor can create listing
  As a Visitor
  In order to publish my listing
  I would like to be able to submit listing form and see it on the landing page

  Background:
    Given I visit the Become a host page
    Then I should see "Create new listing"
    And I fill in "Name" with "Leif"
    And I fill in "Location" with "Stockholm"
    And I fill in "Description" with "Cutest cat ever"
    And I fill in "Availability" with "1-10 may"
    And I fill in "Email" with "leif@craft.se"
    And I fill in "Phone" with "0712345678"
  
  Scenario:
    When I click "Create Listing" button
    Then I should be on landing page
    Then I should see "Leif"
    And I should see "Stockholm" within "Leif" section
    And I should see "Cutest cat ever" within "Leif" section
    And I should see "1-10 may" within "Leif" section
    And I should see "leif@craft.se" within "Leif" section
    And I should see "0712345678" within "Leif" section