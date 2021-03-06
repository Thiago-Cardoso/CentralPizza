require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :status => false,
      :total => "9.99",
      :table => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_table_id[name=?]", "order[table_id]"
    end
  end
end
