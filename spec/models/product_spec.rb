require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Unit tests for product Model!!" do
  	# it "Valid product?" do
  	#   product = Product.new
  	#   product.name = "Cheese Pizza"
  	#   product.price = 46.90
  	#   product.description = "It's great for lunch or dinner"
  	#   product.category_product_id = 1
  	#   expect(product.valid?).to be_truthy
  	# end

    it "Valid product with null name?" do
  	  product = Product.new
  	  product.name = nil
  	  product.price = 46.90
  	  product.description = "It's great for lunch or dinner"
  	  product.category_product_id = 1
  	  expect(product.valid?).to be_falsey
  	end

    it "Valid product with null price?" do
  	  product = Product.new
  	  product.name = "Cheese Pizza"
  	  product.price = nil
  	  product.description = "It's great for lunch or dinner"
  	  product.category_product_id = 1
  	  expect(product.valid?).to be_falsey
  	end

    it "Valid product with null description?" do
  	  product = Product.new
  	  product.name = "Cheese Pizza"
  	  product.price = 46.90
  	  product.description = nil
  	  product.category_product_id = 1
  	  expect(product.valid?).to be_falsey
  	end

    it "Valid product with null category of the product?" do
  	  product = Product.new
  	  product.name = "Cheese Pizza"
  	  product.price = 46.90
  	  product.description = "It's great for lunch or dinner"
  	  product.category_product_id = nil
  	  expect(product.valid?).to be_falsey
  	end
  end
end
