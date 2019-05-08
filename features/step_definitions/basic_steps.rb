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