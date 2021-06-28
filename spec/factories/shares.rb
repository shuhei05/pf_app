FactoryBot.define do
  factory :share do
    association :user
    share_information { Faker::Lorem.characters(number:20) }
    share_information_title { Faker::Lorem.characters(number:10) }
  end
end