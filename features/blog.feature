Feature: Blog

  Scenario: Create new blog entry
    When I create a post called "My First Post" with the body
      """
      This is a regular body.
      """
    Then I should see "My First Post"
    And I should see "This is a regular body."
  
  @wip
  Scenario: List all entries
    Given I have the following posts
      | title  | body               |
      | Post 1 | This is my post #1 |
      | Post 2 | This is my post #2 |
      | Post 3 | This is my post #3 |
    When I browse through the posts
    Then I should see a header with "Post 1"
    And I should see "This is my post #1"
    And I should see a header with "Post 2"
    And I should see "This is my post #3"
    And I should see a header with "Post 3"
    And I should see "This is my post #3"
