When("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_link link
end

Given("I visit the New listings page") do
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string} button") do |button|
  click_button button
end

Then "stop" do
  binding.pry
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user) 
end

When("I click on {string}") do |text|
  click_on text
end

When("I visit Create profile page") do
  visit new_profile_path
end
