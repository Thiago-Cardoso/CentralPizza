require 'rails_helper'

RSpec.describe "positions/new", type: :view do
  before(:each) do
    assign(:position, Position.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input#position_name[name=?]", "position[name]"

      assert_select "input#position_description[name=?]", "position[description]"
    end
  end
end
