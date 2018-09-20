namespace :order do
  desc "Create Orders"
  task create: :environment do
    8.times do
      status = Faker::Boolean.boolean
  	  total = Faker::Number.decimal(2)
  	  table_id = Table.ids.sample
  	  order = "#{total} - #{table_id}"
  	  puts "Registering order -> #{order}"
      Order.create(status: status, total: total, table_id: table_id)
	  end
  end
end
