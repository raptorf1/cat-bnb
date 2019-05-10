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