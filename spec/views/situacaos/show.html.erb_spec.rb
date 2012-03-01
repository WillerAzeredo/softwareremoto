require 'spec_helper'

describe "situacaos/show" do
  before(:each) do
    @situacao = assign(:situacao, stub_model(Situacao,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
