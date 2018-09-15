FactoryBot.define do
  factory :order do
    status { Faker::Boolean }
    total { Faker::Number.decimal(2) }
    table
  end
end
