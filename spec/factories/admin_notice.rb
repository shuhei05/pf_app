FactoryBot.define do
  factory :admin_notice do
    association :admin
    information_title { Faker::Lorem.characters(number:5) }
    information_body { Faker::Lorem.characters(number:20) }
  end
end