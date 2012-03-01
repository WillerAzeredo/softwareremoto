require 'spec_helper'

describe "reuniaos/index" do
  before(:each) do
    assign(:reuniaos, [
      stub_model(Reuniao,
        :local => "Local",
        :data => "Data",
        :tipo => "Tipo",
        :hora => "Hora"
      ),
      stub_model(Reuniao,
        :local => "Local",
        :data => "Data",
        :tipo => "Tipo",
        :hora => "Hora"
      )
    ])
  end

  it "renders a list of reuniaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
  end
end
