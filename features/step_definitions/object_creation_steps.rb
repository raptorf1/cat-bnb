Given("the following listings exist") do |table|
  table.hashes.each do |listing|
    FactoryBot.create(:listing, listing)
  end
end