require 'rails_helper'
#run test  docker-compose run --rm website bundle exec rspec spec/models/payment_spec.rb
RSpec.describe Payment, type: :model do
 
  it 'is valid with tax_invoice, total and order' do
    payment = create(:payment)
    expect(payment).to be_valid
  end

  context 'Validates' do 
    #equals method up https://github.com/thoughtbot/shoulda-matchers
    it { is_expected.to validate_presence_of(:tax_invoice) }
    it { is_expected.to validate_presence_of(:total) }
    it { is_expected.to validate_presence_of(:order_id) }
  end

  #test association between payment and order
  context 'Associations' do
    it { is_expected.to belong_to(:order) }
  end

end
