Given(/^there are (\d+) user stories$/) do |count|
  count.to_i.times do |n|
    UserStory.create!({ :headline => "User Story #{n}",
                        :user => "User #{n}",
                        :capability => "Capability #{n}",
                        :reason => "Reason #{n}"})
  end
 end

Given(/^I am on the user stories homepage$/) do
  visit("/user_stories")
 end

Then(/^I can see a list of (\d+) user stories$/) do |count|
  expect(page).to have_selector("table#user_stories-list>tbody>tr:eq(#{count})")
 end