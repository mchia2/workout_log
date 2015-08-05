Feature: Creating a workout log


	Scenario: Creating a workout log
		Given I am on the home page
		And I follow "Workout"
		When I fill in "Body" with "Legs"
		And I fill in "How're you feeling" with "Good"
		And I fill in "How long was the workout" with "60 min"
		Then I should be brought to my workout page