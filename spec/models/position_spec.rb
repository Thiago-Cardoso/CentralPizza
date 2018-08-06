require 'rails_helper'

RSpec.describe Position, type: :model do
  	context "Unit tests for Position Model!!" do
	  	it	"Valid position?" do
	  		position = Position.new
	  		position.name = "Administrative Manager"
	  		position.description = "Administrative Manager - RH "
	  		expect(position.valid?).to be_truthy
	  	end

	  	it	"Valid position with null name?" do
	  		position = Position.new
	  		position.name = nil
	  		position.description = "Administrative Manager - RH "
	  		expect(position.valid?).to be_falsey
	  	end

	  	it	"Valid position with null description?" do
	  		position = Position.new
	  		position.name = "Administrative Manager"
	  		position.description = nil
	  		expect(position.valid?).to be_falsey
	  	end
	end
end
