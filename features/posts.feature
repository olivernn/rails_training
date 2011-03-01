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

  Scenario: As a blogger I want all created blog posts to valid
    Given I am on the homepage
    When I follow "New Post"
    And I press "Save"
    Then I should have "0" Post
    And I should see "Title can't be blank"
    And I should see "Body can't be blank"

  Scenario: As a blogger I want to see all the blogs I have posted
    Given I have the following posts
      | title | body  |
      | foo   | bar   |
      | hello | world |
    When I am on the homepage
    Then I should see "foo" 
    And I should see "hello"
    And I should not see "bar"
    And I should not see "world"

   @wip
   Scenario: As a blogger I want people to be able to read my posts
     Given I have the following posts
       | title | body  |
       | foo   | bar   |
       | hello | world |
     When I am on the homepage
     And I follow "foo"
     Then I should see "foo"
     And I should see "bar"
     And I should not see "hello"
     And I should not see "world"
     