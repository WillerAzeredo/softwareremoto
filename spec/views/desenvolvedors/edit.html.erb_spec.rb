require 'spec_helper'

describe "desenvolvedors/edit" do
  before(:each) do
    @desenvolvedor = assign(:desenvolvedor, stub_model(Desenvolvedor,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :dtnascimento => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit desenvolvedor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => desenvolvedors_path(@desenvolvedor), :method => "post" do
      assert_select "input#desenvolvedor_nome", :name => "desenvolvedor[nome]"
      assert_select "input#desenvolvedor_endereco", :name => "desenvolvedor[endereco]"
      assert_select "input#desenvolvedor_telefone", :name => "desenvolvedor[telefone]"
      assert_select "input#desenvolvedor_cpf", :name => "desenvolvedor[cpf]"
      assert_select "input#desenvolvedor_rg", :name => "desenvolvedor[rg]"
      assert_select "input#desenvolvedor_dtnascimento", :name => "desenvolvedor[dtnascimento]"
      assert_select "input#desenvolvedor_email", :name => "desenvolvedor[email]"
    end
  end
end
