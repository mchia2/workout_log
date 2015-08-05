Given(/^I am a new, authenticated user$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
end

Given(/^I follow sign in$/) do
 visit '/users/sign_in'
end

Given(/^I fill in my user name and password$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
end

Given (/^I click sign in button$/) do
	click_button "Log in"
end

Then(/^I should be able to sign in successfully$/) do
  assert page.has_content? "Signed in successfully"
end




