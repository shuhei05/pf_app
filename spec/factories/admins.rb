FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
  end
end