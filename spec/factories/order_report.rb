FactoryBot.define do
  #https://github.com/stympy/faker/blob/master/doc/number.md
    factory :order_report do
      description  { FFaker::Lorem.phrase }
      date_time  { FFaker::Time.datetime }
      user
      order
    end
  end
