require 'spec_helper'

describe "areas/show" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
