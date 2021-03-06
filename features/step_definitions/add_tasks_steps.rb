Given(/^there is a user story titled with "(.*?)"$/) do |title|
    @user_story = UserStory.create!({ :headline => title })
 end

Given(/^I am on the user story page$/) do
    visit(user_story_path @user_story)
 end

When(/^I add a task with the following information$/) do |table|
  # table is a Cucumber::Ast::Table
    table.hashes.each do |task_data|
        fill_in "Task", :with => task_data[:Task]
        fill_in "Overview", :with => task_data[:Overview]
        fill_in "Owner", :with => task_data[:Owner]
        fill_in "Effort", :with => task_data[:Effort]
        click_button "Create Task"
    end
 end

Then(/^I can see (\d+) tasks have been added to the user story$/) do |count|
    expect(page).to have_selector("table#tasks-list>tbody>tr:eq(#{count})")
 end

Then(/^total hours is "(.*?)"$/) do |total|
    expect(@user_story.tasks.sum(:effort)).to eq(total.to_f)
 end