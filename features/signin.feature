Feature: Signing in
	In order to sign in
	As an authenticated user
	I want to be able to sign in at will

	Scenario: Signing in
		Given I am a new, authenticated user
		And I follow sign in
		And I fill in my user name and password
		And I click sign in button
		Then I should be able to sign in successfully