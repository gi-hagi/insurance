FactoryBot.define do
  factory :item do
    title {Faker::Lorem.sentence}
    concept {Faker::Lorem.sentence}
    feature {Faker::Lorem.sentence}
    merit {Faker::Lorem.sentence}
    demerit {Faker::Lorem.sentence}
    association :user
  end
end
