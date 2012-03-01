require 'spec_helper'

describe "contratos/index" do
  before(:each) do
    assign(:contratos, [
      stub_model(Contrato,
        :datainicial => "Datainicial",
        :datafinal => "Datafinal",
        :valorestimado => "Valorestimado",
        :valorfinal => "Valorfinal",
        :formapagamento => "Formapagamento"
      ),
      stub_model(Contrato,
        :datainicial => "Datainicial",
        :datafinal => "Datafinal",
        :valorestimado => "Valorestimado",
        :valorfinal => "Valorfinal",
        :formapagamento => "Formapagamento"
      )
    ])
  end

  it "renders a list of contratos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datainicial".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datafinal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Valorestimado".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Valorfinal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Formapagamento".to_s, :count => 2
  end
end
