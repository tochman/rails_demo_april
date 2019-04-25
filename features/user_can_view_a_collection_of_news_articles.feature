Feature: List articles on the index page

    "As a visitor,
    When I visit the landing page of the application
  I would like to see a list of news articles"

  Background: Database is populated with content
    Given the following articles exist:
      | title                                                      | status    |
      | The Redacted Muller report is out                          | published |
      | Summer hits Stockholm Way too long title for my validator! | published |
      | Sum                                                        | published |


  Scenario: User visits the news service and see a list of news articles
    When I visit the site
    Then I should see "The Redacted Muller report is out"
    And I should see "Summer hits Stockholm!"

