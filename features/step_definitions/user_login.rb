
def valid_user
	@user = FactoryGirl.create(:user)
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

