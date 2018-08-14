require 'rails_helper'

RSpec.describe Table, type: :model do
  fixtures :tables
  context "Unit tests for Table Model!!" do
    before(:each) do
      @table = tables(:table001)
    end

    it "Valid table?" do
  	  expect(@table.valid?).to be_truthy
  	end

    it "Valid table with null description?" do
      @table.description = nil
  	  expect(@table.valid?).to be_falsey
  	end

    it "Valid table with null status?" do
      @table.status = nil
  	  expect(@table.valid?).to be_falsey
  	end
  end
end
