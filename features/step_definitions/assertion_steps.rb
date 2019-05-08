Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} link") do |link|
  expect(page).to have_link(link)
end

Then("I should see {string} within {string} section") do |content, section|
  name = Listing.find_by(pet_name: section)
  dom_section = "#listing_#{name.id}"
  within(dom_section) do
    expect(page).to have_content content
  end
end

Then("I should see {string} button") do |button|
  expect(page).to have_button(button)
end

