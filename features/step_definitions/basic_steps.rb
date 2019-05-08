When("I visit the landing page") do
  visit root_path
end

Given("I visit the Become a host page") do
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
