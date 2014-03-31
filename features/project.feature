Feature: Creating Projects
	Signed-in user should be able to create a post with correct information
	Signed-in user should be able to join a project
	Visitor should be able to see projects, but not join
	Creater of project should be able to see project, but not have a join option


	Scenario: Create a project if user is signed in
		Given I am signed in
		And I see Create Project
		And I click Create Project
		And I fill in the new project form with valid information
		And I hit the create button
		Then I expect the page to have "New project created"
