require 'rails_helper'

RSpec.describe "order_reports/edit", type: :view do
  before(:each) do
    @order_report = assign(:order_report, OrderReport.create!(
      :description => "MyString",
      :order => nil,
      :user => nil
    ))
  end

  it "renders the edit order_report form" do
    render

    assert_select "form[action=?][method=?]", order_report_path(@order_report), "post" do

      assert_select "input#order_report_description[name=?]", "order_report[description]"

      assert_select "input#order_report_order_id[name=?]", "order_report[order_id]"

      assert_select "input#order_report_user_id[name=?]", "order_report[user_id]"
    end
  end
end
