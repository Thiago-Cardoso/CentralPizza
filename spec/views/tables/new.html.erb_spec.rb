require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      :description => "MyString",
      :status => false
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input#table_description[name=?]", "table[description]"

      assert_select "input#table_status[name=?]", "table[status]"
    end
  end
end
