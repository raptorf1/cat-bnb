Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see a navigation bar") do
  find('.nav_bar').visible?
end

Then("I should see {string} link") do |link|
  page.should have_link(link)
end