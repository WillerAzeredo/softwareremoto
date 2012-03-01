require 'spec_helper'

describe "reuniaos/new" do
  before(:each) do
    assign(:reuniao, stub_model(Reuniao,
      :local => "MyString",
      :data => "MyString",
      :tipo => "MyString",
      :hora => "MyString"
    ).as_new_record)
  end

  it "renders new reuniao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reuniaos_path, :method => "post" do
      assert_select "input#reuniao_local", :name => "reuniao[local]"
      assert_select "input#reuniao_data", :name => "reuniao[data]"
      assert_select "input#reuniao_tipo", :name => "reuniao[tipo]"
      assert_select "input#reuniao_hora", :name => "reuniao[hora]"
    end
  end
end
