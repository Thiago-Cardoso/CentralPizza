FactoryBot.define do
  #https://github.com/stympy/faker/blob/master/doc/number.md
    factory :payment do
      tax_invoice  { Faker::Number.number(3)  }
      total  { Faker::Number.decimal(2)}
      order
    end
  end