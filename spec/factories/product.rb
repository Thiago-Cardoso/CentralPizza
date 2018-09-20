FactoryBot.define do
    factory :product do
      name         { FFaker::Lorem.word   }
      price  { Faker::Number.number(3)  }
      description  { FFaker::Lorem.phrase }
      category_product
    end
end