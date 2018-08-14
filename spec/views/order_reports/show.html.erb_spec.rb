require 'rails_helper'

RSpec.describe "order_reports/show", type: :view do
  before(:each) do
    @order_report = assign(:order_report, OrderReport.create!(
      :description => "Description",
      :order => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
