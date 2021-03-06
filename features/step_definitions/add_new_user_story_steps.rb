Given(/^I am on the user story homepage$/) do
  visit("/user_stories")
end

When(/^I click “New User Story”$/) do
  click_on "new-user-story-link"
end

When(/^I add a user story with the following information$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do | t |
    @headline = t[:Headline]
    fill_in "Headline", :with => t[:Headline]
    fill_in "User", :with => t[:User]
    fill_in "Capability", :with => t[:Capability]
    fill_in "Reason", :with => t[:Reason]
    fill_in "Comments", :with => t[:Comments]
    fill_in "Acceptance criteria", :with => t[:Criteria]
    if t[:Epic]
      check "Epic"
    else
      uncheck "Epic"
    end
    if t[:Blocked]
      check "Blocked"
    else
      uncheck "Blocked"
    end
    fill_in "Priority", :with => t[:Priority]
    fill_in "Status", :with => t[:Status]
  end
 end

When(/^I click “Save” button$/) do
  click_on "Create User story"
 end

Then(/^I should see the user story I just added$/) do
  expect(page).to have_content(@headline)
 end