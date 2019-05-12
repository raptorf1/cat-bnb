FactoryBot.define do
  factory :listing do
    pet_name { "MyString" }
    pet_location { "MyString" }
    pet_description { "MyText" }
    start_date { "01/01/2020" }
    end_date { "01/05/2020" }
    pet_picture { "MyString" }
    association :user 
  end
end
