FactoryBot.define do
  factory :test_model do
    title {Faker::Company.bs}
    text {Faker::Company.bs}
  end
end
