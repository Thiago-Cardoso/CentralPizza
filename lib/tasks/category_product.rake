namespace :category_product do
  desc "Create Categories of Products"
  task create: :environment do
    14.times do
  	  name = Faker::Food.dish
  	  description = Faker::Community.quotes
  	  category_product = "#{name}"
  	  puts "Registering category of product -> #{category_product}"
  	  CategoryProduct.create(name: name, description: description)
    end
  end
end
