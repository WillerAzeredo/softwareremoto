require 'spec_helper'

describe "desenvolvedors/index" do
  before(:each) do
    assign(:desenvolvedors, [
      stub_model(Desenvolvedor,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :cpf => "Cpf",
        :rg => "Rg",
        :dtnascimento => "Dtnascimento",
        :email => "Email"
      ),
      stub_model(Desenvolvedor,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :cpf => "Cpf",
        :rg => "Rg",
        :dtnascimento => "Dtnascimento",
        :email => "Email"
      )
    ])
  end

  it "renders a list of desenvolvedors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dtnascimento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
