FactoryBot.define do
  factory :event do
    association :user
    title { Faker::Lorem.characters(number:6) }
    body { Faker::Lorem.characters(number:20) }
  end
end