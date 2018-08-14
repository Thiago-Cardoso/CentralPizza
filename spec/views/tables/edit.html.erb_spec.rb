require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :description => "MyString",
      :status => false
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input#table_description[name=?]", "table[description]"

      assert_select "input#table_status[name=?]", "table[status]"
    end
  end
end
