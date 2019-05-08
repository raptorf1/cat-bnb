FactoryBot.define do
  factory :listing do
    pet_name { "MyString" }
    pet_location { "MyString" }
    pet_description { "MyText" }
    start_date { "MyString" }
    end_date { "MyString" }
    pet_picture { "MyString" }
  end
end
