When("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_link link
end

Given("I visit the Become a host page") do
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end
