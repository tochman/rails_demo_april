Feature: List articles on the index page

    "As a visitor,
    When I visit the landing page of the application
  I would like to see a list of news articles"

  Scenario: User visits the news service and see a list of news articles
    When I visit the site
    Then I should see "The Muller report is out"
    And I should see "Spring hits Stockholm!"

