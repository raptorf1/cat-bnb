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

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user) 
end

Then("I should be on Create profile page") do
  visit new_profile_path 
end




