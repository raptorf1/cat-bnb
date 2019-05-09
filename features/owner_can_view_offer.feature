Feature: Owner can view offers on Listing page
  As a cat owner,
  In order to choose host for my cat
  I need to be able to view the offers for my listing

  Scenario: Owner can click on listing and see correct offers in that listing 
    Given I visit the landing page
    When I click "show" within "Leif"
    Then I should be on the "Leif" listing page