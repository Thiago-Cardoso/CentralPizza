namespace :order_report do
  desc "Create Order Report"
  task create: :environment do
    14.times do
  	  description = Faker::Community.quotes
  	  date_time = Faker::Date.between(2.days.ago, Date.today)
      order_id = Order.ids.sample
      user_id = User.ids.sample
  	  order_report = "#{order_id} - #{user_id}"
  	  puts "Registering order report -> #{order_report}"
      OrderReport.create(description: description, date_time: date_time, order_id: order_id, user_id: user_id)
	  end
  end
end
