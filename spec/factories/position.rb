FactoryBot.define do
    factory :position do
      name         { FFaker::Lorem.word }
      description         { FFaker::Lorem.word }
     end
  end
  