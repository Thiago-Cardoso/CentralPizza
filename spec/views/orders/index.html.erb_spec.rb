require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :status => false,
        :total => "9.99",
        :table => nil
      ),
      Order.create!(
        :status => false,
        :total => "9.99",
        :table => nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
