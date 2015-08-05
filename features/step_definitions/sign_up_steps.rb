
Given(/^I follow "(.*?)"$/) do |button_name|
  click_link_or_button button_name, :match => :prefer_exact
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
	if field == "password"
  		fill_in "user_password", :with => value
  	elsif field == "password confirmation"
  		fill_in field, :with => value, :match => :prefer_exact
  	elsif field == "Body Part"
  		find('workouts#new').find(field).set(value)
  	end
end

When(/^I press "(.*?)"$/) do |button_name|
	click_button button_name
end

Then(/^I should go back to the home page$/) do
  visit ('/')
end




