
def valid_user
	@user ||= FactoryGirl.create(:user)
end

def signed_in_user
	valid_user
	visit '/'
	click_link "Login"
	fill_in "user_email", with: @user.email
	fill_in "user_password", with: @user.password
	click_link_or_button("Sign in")
end


Given(/^I visit the home page$/) do
  visit "/"
end

Given(/^I see (.*)$/) do |arg1|
  page.should have_selector(:link_or_button, "#{arg1}")
end

Given(/^I click (.*)$/) do |arg1|
  click_link "#{arg1}"
end


Given(/^I fill in the (.*) and (.*) with valid information$/) do |arg1, arg2| 
	valid_user
	fill_in "#{arg1}", with: @user.email
	fill_in	"#{arg2}", with: @user.password
end

Given(/^I hit the (.*) button$/) do |arg1|
  click_link_or_button("#{arg1}")
end

Then(/^I expect the page to have "(.*?)"$/) do |arg1|
	expect(page).to have_content("#{arg1}")
end

Given(/^I am signed in$/) do
  signed_in_user
end

Given(/^I fill in the new project form with valid information$/) do
	select "Challenge", from: "Type of Project"
	fill_in "new_project_title", with: "Creating a Test Project"
	fill_in "new_project_body", with: "Adding a test body"
	choose "Beginner", from: "Project skill level"
	choose "10-15 hours", from: "Estimated Weekly Hours"
	choose "3", from: "Number of positions"
	choose "Product Owner", from: "Role 1"
	choose "Team Lead", from: "Role 2"
	choose "Team Member", from: "Role 3"
	select '2014/15/04', from: "Next stand up"
	select '2014/16/09', from: "Deadline" 
	fill_in "new_deadline_reason", with: "Test deadline date"
	fill_in 'new_project_tag', with: "Ruby"
	fill_in 'new_project_tag', with: "Rails"
end
