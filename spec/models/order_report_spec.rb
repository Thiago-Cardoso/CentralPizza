require 'rails_helper'

RSpec.describe OrderReport, type: :model do
  fixtures :order_report
  context "Unit tests for Order Report Model!!" do
    before(:each) do
      @order_report = order_report(:order_report001)
    end

    it "Valid order report?" do
  	  expect(@order_report.valid?).to be_truthy
  	end

    it "Valid order report with null description?" do
      @order_report.description = nil
  	  expect(@order_report.valid?).to be_falsey
  	end

    it "Valid order report with null date time?" do
      @order_report.date_time = nil
  	  expect(@order_report.valid?).to be_falsey
  	end

    it "Valid order report with null order id?" do
      @order_report.order_id = nil
  	  expect(@order_report.valid?).to be_falsey
  	end

    it "Valid order report with null user id?" do
      @order_report.user_id = nil
  	  expect(@order_report.valid?).to be_falsey
  	end
  end
end
