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

When("I click on {string} within {string} section") do |content, section|
name = Listing.find_by(pet_name: section)
dom_section = "#listing_#{name.id}"
within(dom_section) do
  expect(page).to have_content content
  end
end

When("I click {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


# Then "stop" do
#   binding.pry
# end