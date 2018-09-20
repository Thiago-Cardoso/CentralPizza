namespace :order_item do
  desc "Create Order Items"
  task create: :environment do
    28.times do
  	  order_id = Order.ids.sample
  	  product_id = Product.ids.sample
  	  order_item = "#{order_id} - #{product_id}"
  	  puts "Registering order item -> #{order_item}"
      OrderItem.create(order_id: order_id, product_id: product_id)
	  end
  end
end
