require 'spec_helper'

describe "contratos/show" do
  before(:each) do
    @contrato = assign(:contrato, stub_model(Contrato,
      :datainicial => "Datainicial",
      :datafinal => "Datafinal",
      :valorestimado => "Valorestimado",
      :valorfinal => "Valorfinal",
      :formapagamento => "Formapagamento"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datainicial/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datafinal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Valorestimado/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Valorfinal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Formapagamento/)
  end
end
