FactoryBot.define do
  factory :offer do
    name { "MyString" }
    email { "MyString" }
    location { "MyString" }
    price { 1 }
    association :listing
  end
end
