Given(/^I am not logged in$/) do
   visit '/'
end

Then(/^I am signed out$/) do
  visit '/'
end

Given(/^I am logged in$/) do
  email = 'test@123.com'
  password = 'password'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
  assert page.has_content? "Signed in successfully"
end

When(/^I click the sign out button$/) do
  visit '/users/sign_out'
end

Then(/^I should see a signed out message$/) do
  assert page.has_content? "Signed out successfully."
end
