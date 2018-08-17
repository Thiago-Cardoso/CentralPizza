require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  fixtures :order_item
  context "Unit tests for Order Item Model!!" do
    before(:each) do
      @order_item = order_item(:order_item001)
    end

    it "Valid order item?" do
  	  expect(@order_item.valid?).to be_truthy
  	end

    it "Valid order item with null order id?" do
      @order_item.order_id = nil
  	  expect(@order_item.valid?).to be_falsey
  	end

    it "Valid order with null product id?" do
      @order_item.product_id = nil
  	  expect(@order_item.valid?).to be_falsey
  	end
  end
end
