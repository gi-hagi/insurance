FactoryBot.define do
  factory :user do
    nickname {Faker::Internet.username(specifier: 5..10)}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    birthday { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end