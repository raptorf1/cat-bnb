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

  Scenario:
    When I click "Create Listing" button
    Then I should be on landing page
    Then I should see "Leif"
    And I should see "Stockholm" within "Leif" section
    And I should see "Cutest cat ever" within "Leif" section
