FactoryBot.define do
  factory :offer do
    name { "MyString" }
    email { "MyString" }
    location { "MyString" }
    price { 1 }
    status { nil }
    association :listing
  end
end
