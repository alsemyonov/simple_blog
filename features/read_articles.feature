Feature: Read articles
  In order to read a blog
  As an reader
  I want to read articles

  Scenario: List articles
    Given I have articles titled Pizza, Breadsticks
    When I go to the list of articles
    Then I should see "Pizza"
    And I should see "Breadsticks"

  Scenario: Read an article
    Given I have articles titled Pizza, Breadsticks
    And I am on the list of articles
    When I follow "Pizza"
    Then I should see "Pizza"
    And I should see "The text about Pizza"

