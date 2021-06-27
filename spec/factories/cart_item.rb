FactoryBot.define do
  factory :cart_item do
    association :user
    association :product
    quantity {Faker::Number.between(from: 5, to: 11)}
  end
end