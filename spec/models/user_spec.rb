require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users
  context "Unit tests for User Model!!" do
    before(:each) do
      @user = users(:john)
    end

  	# it "Valid user?" do
  	#   user = User.new
  	#   user.name = "John"
  	#   user.email = "john@john.com"
  	#   user.password = 123456
  	#   user.phone_number = 2853064258
  	#   user.position_id = 1
  	#   expect(user.valid?).to be_truthy
  	# end
    #
    # it "Valid user with null email?" do
  	#   user = User.new
  	#   user.name = "John"
  	#   user.email = nil
  	#   user.password = 123456
  	#   user.phone_number = 2853064258
  	#   user.position_id = 1
  	#   expect(user.valid?).to be_falsey
    # end
    #
    # it "Valid user with null name?" do
  	#   user = User.new
  	#   user.name = nil
  	#   user.email = "john@john.com"
  	#   user.password = 123456
  	#   user.phone_number = 2853064258
  	#   user.position_id = 1
  	#   expect(user.valid?).to be_falsey
    # end
    #
    # it "Valid user with null password?" do
  	#   user = User.new
  	#   user.name = "John"
  	#   user.email = "john@john.com"
  	#   user.password = nil
  	#   user.phone_number = 2853064258
  	#   user.position_id = 1
  	#   expect(user.valid?).to be_falsey
    # end
    #
    # it "Valid user with null phone_number?" do
  	#   user = User.new
  	#   user.name = "John"
  	#   user.email = "john@john.com"
  	#   user.password = 123456
  	#   user.phone_number = nil
  	#   user.position_id = 1
  	#   expect(user.valid?).to be_falsey
    # end
    #
    # it "Valid user with null position?" do
  	#   user = User.new
  	#   user.name = "John"
  	#   user.email = "john@john.com"
  	#   user.password = 123456
  	#   user.phone_number = 2853064258
  	#   user.position_id = nil
  	#   expect(user.valid?).to be_falsey
    # end

    it "Valid user?" do
  	  expect(@user.valid?).to be_truthy
  	end

    it "Valid user with null name?" do
      @user.name = nil
  	  expect(@user.valid?).to be_falsey
  	end

    it "Valid user with null password?" do
      @user.encrypted_password = nil
  	  expect(@user.valid?).to be_falsey
  	end

    it "Valid user with null email?" do
      @user.email = nil
  	  expect(@user.valid?).to be_falsey
  	end

    it "Valid user with null phone_number?" do
      @user.phone_number = nil
  	  expect(@user.valid?).to be_falsey
  	end

    it "Valid user with null position_id?" do
      @user.position_id = nil
  	  expect(@user.valid?).to be_falsey
  	end
  end
end
