FactoryBot.define do
    factory :user do
      name         { FFaker::Lorem.word }
      email        { FFaker::Internet.email }
      phone_number { FFaker::PhoneNumberBR.phone_number}
      password     {FFaker::Internet.password(8)}
      position 
    end
  end
  