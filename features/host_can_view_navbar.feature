Feature: Host can view navbar and see "Become a Host" link 
    As a Host 
    In order to use the service
    I would like to navigate the site

  Scenario: Visitor can see the landing page
    Given I visit the landing page
    Then I should see "Welcome"
    And I should see "Become a host" link 
    And I should see "New listing" link
    And I should see "Sign up" link
    And I should see "Log in" link
    And I should see "Log out" link
