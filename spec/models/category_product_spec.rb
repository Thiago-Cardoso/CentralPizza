require 'rails_helper'

RSpec.describe CategoryProduct, type: :model do
    it 'is valid with name, description' do
      category_product = create(:category_product)
      expect(category_product).to be_valid
    end

    / it is ok but down is short method
    it 'is invalid without name' do
      #used build to just create in memory not save in database
      category_product = build(:category_product, name: nil) 
      category_product.valid?
      expect(category_product.errors[:name]).to include("can't be blank")
    end
    it 'is invalid without description' do
      category_product = build(:category_product, description: nil) 
      category_product.valid?
      expect(category_product.errors[:description]).to include("can't be blank")
    end/

    context 'Validates' do 
      #equals method up https://github.com/thoughtbot/shoulda-matchers
      it { is_expected.to validate_presence_of(:description) }
      it { should validate_presence_of(:name) }
    end
end
