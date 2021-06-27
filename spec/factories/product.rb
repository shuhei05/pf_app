FactoryBot.define do
  factory :product do
    name { Faker::Lorem.characters(number:5) }
    introduction { Faker::Lorem.characters(number:10) }
  end
end