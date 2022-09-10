FactoryBot.define do
  factory :user do
    email { "agustin@gmail.com" }
    age { 33 }
    password_digest { "MyString" }
    type { "test" }
  end
end
