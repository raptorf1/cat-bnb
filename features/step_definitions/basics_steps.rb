When("I visit the {string}") do |string|
  visit root_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

Then("I should see a navigation bar") do
  find('.nav_bar').visible?
end

Then("I should see {string} link") do |string|
  page.should have_link(string)
end

When("I click {string} link") do |string|
  click_link string
end

