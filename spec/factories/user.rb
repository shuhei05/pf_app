FactoryBot.define do
  factory :user do
    name { Faker::Name.name}
    email { Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    postal_code { Faker::Address.name}
    phone_number { Faker::Number.number(digits: 11)}
  end
end