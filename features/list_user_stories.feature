Feature: List User Stories
  As a team member
  I can see a list of user stories
  So that I know the expected capabilities of the system

Scenario: show list of stories
  Given there are 5 user stories
  And I am on the user stories homepage
  Then I can see a list of 5 user stories