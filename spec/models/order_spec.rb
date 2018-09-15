require 'rails_helper'

RSpec.describe Order, type: :model do

  it 'is valid with total, status and table' do
    order = create(:order)
    expect(order).to be_valid
  end

  context 'Validates' do
    it { is_expected.to validate_presence_of(:total) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:table_id) }
  end

  #test association between order and table
  context 'Associations' do
    it { is_expected.to belong_to(:table) }
  end

end
