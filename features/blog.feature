Feature: Blog

  Scenario: Create new blog entry
    When I create a post called "My First Post" with the body
      """
      This is a regular body.
      """
    Then I should see "My First Post"
    And I should see "This is a regular body."

