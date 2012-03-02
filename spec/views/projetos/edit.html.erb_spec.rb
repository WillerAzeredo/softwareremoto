require 'spec_helper'

describe "projetos/edit" do
  before(:each) do
    @projeto = assign(:projeto, stub_model(Projeto,
      :nome => "MyString",
      :descricao => "MyString",
      :versao => "MyString",
      :requerimento => nil,
      :area => nil,
      :situacao => nil,
      :reuniao => nil,
      :desenvolvedor => nil
    ))
  end

  it "renders the edit projeto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projetos_path(@projeto), :method => "post" do
      assert_select "input#projeto_nome", :name => "projeto[nome]"
      assert_select "input#projeto_descricao", :name => "projeto[descricao]"
      assert_select "input#projeto_versao", :name => "projeto[versao]"
      assert_select "input#projeto_requerimento", :name => "projeto[requerimento]"
      assert_select "input#projeto_area", :name => "projeto[area]"
      assert_select "input#projeto_situacao", :name => "projeto[situacao]"
      assert_select "input#projeto_reuniao", :name => "projeto[reuniao]"
      assert_select "input#projeto_desenvolvedor", :name => "projeto[desenvolvedor]"
    end
  end
end
