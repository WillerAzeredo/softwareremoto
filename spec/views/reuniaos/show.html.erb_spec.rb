require 'spec_helper'

describe "reuniaos/show" do
  before(:each) do
    @reuniao = assign(:reuniao, stub_model(Reuniao,
      :local => "Local",
      :data => "Data",
      :tipo => "Tipo",
      :hora => "Hora"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Local/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hora/)
  end
end
