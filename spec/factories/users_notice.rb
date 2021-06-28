FactoryBot.define do
  factory :user_notice do
    association :user
    information_title { Faker::Lorem.characters(number:5) }
    information_body { Faker::Lorem.characters(number:20) }
  end
end