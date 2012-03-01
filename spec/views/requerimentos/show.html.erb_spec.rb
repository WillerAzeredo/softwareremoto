require 'spec_helper'

describe "requerimentos/show" do
  before(:each) do
    @requerimento = assign(:requerimento, stub_model(Requerimento,
      :datasolicitacao => "Datasolicitacao",
      :contrato => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datasolicitacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
