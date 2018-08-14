require 'rails_helper'

RSpec.describe "tables/index", type: :view do
  before(:each) do
    assign(:tables, [
      Table.create!(
        :description => "Description",
        :status => false
      ),
      Table.create!(
        :description => "Description",
        :status => false
      )
    ])
  end

  it "renders a list of tables" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
