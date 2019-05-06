When("I visit the landing page") do
  visit root_path
end

Then("I should see a {string}") do |string|
  expect(page).to have_content(string)
end

Then("I should see link {string}") do |string|
  page.should have_link(string)
end
