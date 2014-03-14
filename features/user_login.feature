Feature: User Sign In
	User should be able to Sign In with valid credentials
	User should be able to sign in an account with valid credentials
	User should not be able to Create an account with invalid credentials
	User should be able to create an account with valid credentials

	Scenario: Sign In with Valid Credentials 
		Given I visit the home page
		And I see Login
		And I click Login
		And I fill in the user_email and user_password with valid information
		And I hit the Sign in button
		Then I expect the page to have "Welcome"

