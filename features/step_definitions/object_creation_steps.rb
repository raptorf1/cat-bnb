Given("the following listings exist") do |table|
  table.hashes.each do |listing|
    FactoryBot.create(:listing, listing)
  end
end

Given("the following offers exists on a listing") do |table|
  table.hashes.each do |offer|
    Offer.create!(offer)
  end
end