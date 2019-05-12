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

Given("the following profile exist for a user") do |table|
  table.hashes.each do |profile|
    profile_user = User.find_or_create_by(email: profile[:user])
    FactoryBot.create(:profile, profile
      .except('user')
      .merge(user: profile_user))
  end
end

Given("the following listings exist for a user") do |table|
  table.hashes.each do |listing|
    user = User.find_or_create_by(email: listing[:user])
    FactoryBot.create(:listing, listing
      .except('user')
      .merge(user: user))
  end  
end

Given("the following offers exists on a listing") do |table|
  table.hashes.each do |offer|
    listing_offer = Listing.find_or_create_by(pet_name: offer[:listing])
    FactoryBot.create(:offer, offer
      .except('listing')
      .merge(listing: listing_offer))
  end
end
