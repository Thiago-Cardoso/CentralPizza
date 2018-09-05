FactoryBot.define do
    factory :order do
      total  { Faker::Number.decimal(2) }
      status  { Faker::Boolean.boolean }
      table
    end
  end