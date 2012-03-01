require 'spec_helper'

describe "requerimentos/index" do
  before(:each) do
    assign(:requerimentos, [
      stub_model(Requerimento,
        :datasolicitacao => "Datasolicitacao",
        :contrato => nil,
        :cliente => nil
      ),
      stub_model(Requerimento,
        :datasolicitacao => "Datasolicitacao",
        :contrato => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of requerimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datasolicitacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
