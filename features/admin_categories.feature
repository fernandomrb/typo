Feature: Create and Edit categories
  As an admin
  To sort the posts into categories
  I want to create or edit categories

Background:
  Given the blog is set up
  And I am logged into the admin panel
  Then I follow "Categories"
Scenario: I should be able to create a new category
  Given I fill in "category_name" with "Programming"
  Then I fill in "category_keywords" with "technology, programming lenguages"
  And I fill in "category_description" with "All about programming"
  When I press "Save"
  Then I should see "Category was successfully saved."

Scenario: I should be able to edit a category
  Given I follow "Edit"
  Given I fill in "category_name" with "Development"
  Then I fill in "category_keywords" with "technology, software development"
  And I fill in "category_description" with "All about software development"
  When I press "Save"
  Then I should see "Category was successfully saved."
