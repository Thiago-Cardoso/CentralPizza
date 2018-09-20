namespace :payment do
  desc "Create Payments"
  task create: :environment do
    18.times do
      discount = rand(3..9) # from 3% to 9%
  	  tax_invoice = rand(2..6)
  	  total = Faker::Number.decimal(2)
  	  order_id = Order.ids.sample
  	  payment = "#{discount} - #{total}"
  	  puts "Registering payment -> #{payment}"
      Payment.create(discount: discount, tax_invoice: tax_invoice, total: total, order_id: order_id)
	  end
  end
end
