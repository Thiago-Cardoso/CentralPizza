namespace :product do
  desc "Create Products"
  task create: :environment do
    48.times do
      name = Faker::Beer.name
  	  price = Faker::Number.decimal(2)
  	  description = Faker::Community.quotes
  	  category_product_id = CategoryProduct.ids.sample
  	  product = "#{name} - #{price}"
  	  puts "Registering product -> #{product}"
      Product.create(name: name, price: price, description: description, category_product_id: category_product_id)
	  end
  end
end
