Feature: Add New User Story
  As a Team Member
  I want to add a new user story
  So that we can plan to implement it sometime in the future

Scenario: Add new story
  Given I am on the user story homepage
  When I click “New User Story”
  And I add a user story with the following information
| Headline     | User   | Capability   | Reason   | Comments   | Criteria   | Size | Epic  | Blocked | Priority | Status |
| User Story 1 | User 1 | Capability 1 | Reason 1 | Comments 1 | Criteria 1 | 8    | False | False   | High     | New    |
  And I click “Save” button
  Then I should see the user story I just added