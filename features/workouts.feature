Feature: Workouts
	
	Scenario: View Workouts
	  Given that I am a new, authenticated user
	  When I click the button "View Workouts"
	  Then I should see my workouts

