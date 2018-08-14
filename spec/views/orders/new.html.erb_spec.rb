require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :status => false,
      :total => "9.99",
      :table => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_table_id[name=?]", "order[table_id]"
    end
  end
end
