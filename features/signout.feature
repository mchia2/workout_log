Feature: Signing out

	Scenario: Not User
	  Given I am not logged in
	  Then I am signed out

	Scenario: Authenticated User
	  Given I am logged in
	  When I click the sign out button
	  Then I should see a signed out message
