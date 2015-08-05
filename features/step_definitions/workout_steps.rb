Given(/^that I am a new, authenticated user$/) do
  email = 'test@123.com'
  password = 'password'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  assert page.has_content? "Signed in successfully"
  Workout.new(:date => "Wednesday August 5", :workout => "Legs", :mood => "Good", :length => "60 mins")
end

When(/^I click the button "(.*?)"$/) do |button|
  click_link button
end

Then(/^I should be brought to my workout page$/) do
  visit '/'
end

Then(/^I should see my workouts$/) do
  visit '/workouts'
end

