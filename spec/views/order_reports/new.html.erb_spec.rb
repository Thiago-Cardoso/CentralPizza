require 'rails_helper'

RSpec.describe "order_reports/new", type: :view do
  before(:each) do
    assign(:order_report, OrderReport.new(
      :description => "MyString",
      :order => nil,
      :user => nil
    ))
  end

  it "renders new order_report form" do
    render

    assert_select "form[action=?][method=?]", order_reports_path, "post" do

      assert_select "input#order_report_description[name=?]", "order_report[description]"

      assert_select "input#order_report_order_id[name=?]", "order_report[order_id]"

      assert_select "input#order_report_user_id[name=?]", "order_report[user_id]"
    end
  end
end
