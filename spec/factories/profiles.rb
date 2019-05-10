FactoryBot.define do
  factory :profile do
    name { "George" }
    location { "Greece" }
    description { "Sunny" }
    picture { "Picture" }
    association :user
  end
end
