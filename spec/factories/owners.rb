FactoryBot.define do
  factory :owner do
    email { Faker::Internet.email }
    age { rand(30..100) }
    password_digest { Faker::Internet.password(min_length: 10, max_length: 20) }
  end
end
