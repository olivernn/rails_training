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

  Scenario: Commenting on a post
    Given I have the following posts
      | title | body  |
      | foo   | bar   |
    And I am on the homepage
    When I follow "foo"
    And I fill in "Name" with "Bob"
    And I fill in "Message" with "Great post!"
    And I press "Add Comment"
    Then I should have "1" Comment
    And I should see "Bob"
    And I should see "Great post"
    And I should see "1 Comment"
    When I fill in "Name" with "Jack"
    And I fill in "Message" with "Noob!"
    And I press "Add Comment"
    Then I should have "2" Comments
    And I should see "2 Comments"

  Scenario: Editing a post
    Given I have the following post
     | title | body  |
     | foo   | bar   |
    When I am on the homepage 
    And I follow "Edit"
    And I fill in "Body" with "bar bar"
    And I press "Save"
    Then I should be on the show page for the post foo
    And I should see "bar bar"
    And I should see "foo"
