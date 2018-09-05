FactoryBot.define do
    factory :table do
      description  { FFaker::Lorem.phrase }  
      status  { Faker::Boolean.boolean }
    end
  end