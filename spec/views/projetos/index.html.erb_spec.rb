require 'spec_helper'

describe "projetos/index" do
  before(:each) do
    assign(:projetos, [
      stub_model(Projeto,
        :nome => "Nome",
        :descricao => "Descricao",
        :versao => "Versao",
        :requerimento => nil,
        :area => nil,
        :situacao => nil,
        :reuniao => nil,
        :desenvolvedor => nil
      ),
      stub_model(Projeto,
        :nome => "Nome",
        :descricao => "Descricao",
        :versao => "Versao",
        :requerimento => nil,
        :area => nil,
        :situacao => nil,
        :reuniao => nil,
        :desenvolvedor => nil
      )
    ])
  end

  it "renders a list of projetos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Versao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
