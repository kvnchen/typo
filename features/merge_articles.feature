Feature: Merge articles
  As a blog administrator
  In order to reduce clutter on similar articles
  I want to be able to combine articles with similar content

  Background:
    Given the blog is set up

  Scenario: Non admins fail to merge articles
    Given I am logged in as a non admin
    Then I should not see "Settings"
    And I should not see "Merge"

  #Scenario:

  #Scenario: New articles shouldn't be mergeable
  #  Given I am logged into the admin panel
  #  And I am on the new article page
  #  Then I should not see "Merge Articles"

  Scenario: Successful merge of two articles
    Given I am logged into the admin panel
    And I am on the edit article page
    When I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Hello World 1"
    When I follow "Hello World 1"
    Then I should see "First post"
    And I should see "Second post"
    And I should see the comments of "Foobar"
    And I should see the comments of "Blah"
    
