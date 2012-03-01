require 'spec_helper'

describe "contratos/edit" do
  before(:each) do
    @contrato = assign(:contrato, stub_model(Contrato,
      :datainicial => "MyString",
      :datafinal => "MyString",
      :valorestimado => "MyString",
      :valorfinal => "MyString",
      :formapagamento => "MyString"
    ))
  end

  it "renders the edit contrato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contratos_path(@contrato), :method => "post" do
      assert_select "input#contrato_datainicial", :name => "contrato[datainicial]"
      assert_select "input#contrato_datafinal", :name => "contrato[datafinal]"
      assert_select "input#contrato_valorestimado", :name => "contrato[valorestimado]"
      assert_select "input#contrato_valorfinal", :name => "contrato[valorfinal]"
      assert_select "input#contrato_formapagamento", :name => "contrato[formapagamento]"
    end
  end
end
