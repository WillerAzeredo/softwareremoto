require 'spec_helper'

describe "desenvolvedors/show" do
  before(:each) do
    @desenvolvedor = assign(:desenvolvedor, stub_model(Desenvolvedor,
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :cpf => "Cpf",
      :rg => "Rg",
      :dtnascimento => "Dtnascimento",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dtnascimento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
