@javascript
Feature: Visitor can view listing
  As a Visitor
  In order to find a suitable host for my cat
  I want to be able to view listings on the landing page

  Background:
    Given the following listings exist
    | name  | location    | description   | email         | phone_number | availability |
    | Zane  | Gothenburg  | I'm nice      | zane@cat.com  | 0701234567   | 1-10 may     |
    | Carla | Stockholm   | I love cats!  | carla@cool.se | 0709876543   | 25-30 may    |

  Scenario:
    When I visit the landing page
    Then I should see "Zane"
    And I should see "Gothenburg" within "Zane" section
    And I should see "I'm nice" within "Zane" section
    And I should see "zane@cat.com" within "Zane" section
    And I should see "0701234567" within "Zane" section
    And I should see "1-10 may" within "Zane" section