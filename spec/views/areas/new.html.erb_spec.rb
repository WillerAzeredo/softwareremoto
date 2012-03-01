require 'spec_helper'

describe "areas/new" do
  before(:each) do
    assign(:area, stub_model(Area,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path, :method => "post" do
      assert_select "input#area_nome", :name => "area[nome]"
    end
  end
end
