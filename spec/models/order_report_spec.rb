require 'rails_helper'

RSpec.describe OrderReport, type: :model do
=begin
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
  end'
=end

  it 'is valid with description, date_time, user and order' do
    order_report = create(:order_report)
    expect(order_report).to be_valid
  end

  context 'Validates' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:date_time) }
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:order_id) }
  end

  #test association between order_report and [user, order]
  context 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:order) }
  end
end
