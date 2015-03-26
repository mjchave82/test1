Feature: Add Tasks
  As a team member
  I can add tasks to an existing user story
  So that I can show how the team will implement the story

Scenario: Add Tasks to Story
  Given there is a user story titled with "Dummy User Story"
  And I am on the user story page
  When I add a task with the following information
| Task   | Overview   | Owner   | Effort |
| Task 1 | Overview 1 | Owner 1 | 2      |
| Task 2 | Overview 2 | Owner 1 | 0.5    |
| Task 3 | Overview 3 | Owner 2 | 5      |
  Then I can see 3 tasks have been added to the user story
  And total hours is "7.5"