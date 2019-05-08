When("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_link link
end
