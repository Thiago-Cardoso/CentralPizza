require 'rails_helper'

RSpec.describe "order_reports/index", type: :view do
  before(:each) do
    assign(:order_reports, [
      OrderReport.create!(
        :description => "Description",
        :order => nil,
        :user => nil
      ),
      OrderReport.create!(
        :description => "Description",
        :order => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of order_reports" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
