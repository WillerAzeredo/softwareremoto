require 'spec_helper'

describe "requerimentos/edit" do
  before(:each) do
    @requerimento = assign(:requerimento, stub_model(Requerimento,
      :datasolicitacao => "MyString",
      :contrato => nil,
      :cliente => nil
    ))
  end

  it "renders the edit requerimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requerimentos_path(@requerimento), :method => "post" do
      assert_select "input#requerimento_datasolicitacao", :name => "requerimento[datasolicitacao]"
      assert_select "input#requerimento_contrato", :name => "requerimento[contrato]"
      assert_select "input#requerimento_cliente", :name => "requerimento[cliente]"
    end
  end
end
