Feature: Manage Posts
  In order to publish my thoughts to the world
  As a blogger
  I want to be able to manage my posts

  Scenario: As a blogger I want to create blog posts
    Given I am on the homepage
    When I follow "New Post"
    And I fill in "Title" with "New Post"
    And I fill in "Body" with "Awesome post"
    And I press "Save"
    Then I should have "1" Post
    And I should see "New Post"
    And I should see "Awesome post"