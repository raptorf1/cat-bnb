Given("the following listings exist") do |table|
  table.hashes.each do |listing|
    FactoryBot.create(:listing, listing)
  end
end

Given("the following user exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end