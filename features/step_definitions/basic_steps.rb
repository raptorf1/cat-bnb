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
  click_on button
end

Then "stop" do
  binding.pry
end

When("I click {string} within {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the {string} listing page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end