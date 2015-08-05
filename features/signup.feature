Feature: Signing up
	In order to uphold privacy
	As an individual
	I want to be able create my own personalized account

	Scenario: Creating a user
		Given I am on the home page
		And I follow "Sign"
		When I fill in "Email" with "mchia2@gmail.com"
		And I fill in "Password" with "password"
		And I fill in "Password confirmation" with "password"
		And I press "Sign up"
		Then I should go back to the home page
