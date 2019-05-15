Feature: List articles on the index page

    "As a visitor,
    When I visit the landing page of the application
  I would like to see a list of news articles"

  Background: Database is populated with content
    Given the following authors exist:
      | name   |
      | Thomas |
      | Oliver |

    Given the following articles exist:
      | title                             | status    | author |
      | The Redacted Muller report is out | published | Thomas |
      | Summer hits Stockholm!            | published | Oliver |
      | Sum                               | published | Oliver |

  @javascript
  Scenario: User visits the news service and see a list of news articles
    When I visit the site
    Then I should see "The Redacted Muller report is out"
    And I should see "Summer hits Stockholm!"

