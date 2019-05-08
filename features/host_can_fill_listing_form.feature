Feature: Host can fill in a listing form 
  As a Host,
  In order to display information about myself,
  I need to be able to fill in a listing form.

  Scenario: Host can succesully view and fill in all fields in a listing form, without creating it
    Given I visit the Become a host page
    Then I should see "Create new listing"
    And I fill in "Name" with "George"
    And I fill in "Location" with "Stockholm"
    And I fill in "Description" with "Hello, please lend me your cat"
    And I fill in "Availability" with "All summer"
    And I fill in "Email" with "george@craft.se"
    And I fill in "Phone number" with "07071234567"
    And I should see "Create Listing" button
    