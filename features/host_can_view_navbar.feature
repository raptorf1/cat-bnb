Feature: Host can view navbar and see "Become a Host" link 
    As a Host 
    In order to use the service
    I would like to navigate the site

  @javascript
  Scenario: Visitor can see the landing page
    When I visit the landing page
    Then I should see a navigation bar
    And I should see "Welcome Admin"
    And I should see "BECOME A HOST" link 
    And I should see "NEW LISTING" link
    And I should see "SIGN UP" link
    And I should see "LOG IN" link
    And I click "BECOME A HOST" link
