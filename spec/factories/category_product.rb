FactoryBot.define do
    factory :category_product do
      name         { FFaker::Lorem.word   }
      description  { FFaker::Lorem.phrase }
    end
  end