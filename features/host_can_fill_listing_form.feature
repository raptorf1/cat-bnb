Feature: Host can fill in a listing form 
  As a Host,
  In order to display information about myself,
  I need to be able to fill in a listing form.

  Scenario: Host can succesully view and fill in all fields in a listing form, without creating it
    Given I visit the Become a host page
    Then I should see "Create new listing"
    And I fill in "Pet name" with "George"
    And I fill in "Pet location" with "Stockholm"
    And I fill in "Pet description" with "Hello, please lend me your cat"
    And I fill in "Start date" with "2019-06-28"
    And I fill in "End date" with "2019-06-29"
    And I fill in "Pet picture" with "picture"
    And I should see "Create Listing" button
    