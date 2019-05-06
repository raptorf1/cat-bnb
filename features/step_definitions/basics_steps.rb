When("I visit the {string}") do |string|
  visit root_path
end

# Then("I should see a {string}") do |string|
#   expect(root_path).to have_content(string)
# end

# Then("I should see link {string}") do |string|
#   page.should have_link(string)
# end
