require 'spec_helper'

describe "situacaos/index" do
  before(:each) do
    assign(:situacaos, [
      stub_model(Situacao,
        :nome => "Nome"
      ),
      stub_model(Situacao,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of situacaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
