Feature: Host can view navbar and see "Become a Host" link 
    As a Host 
    In order to use the service
    I would like to navigate the site

  @javascript
  Scenario: Visitor can see the landing page
    When I visit the landing page
    And I should see "Welcome"
    And I should see "Become a host" link 
    And I should see "New listing" link
    And I should see "Sign up" link
    And I should see "Log in" link
    And I should see "Log out" link
