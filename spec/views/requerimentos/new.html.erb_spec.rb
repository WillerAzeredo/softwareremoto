require 'spec_helper'

describe "requerimentos/new" do
  before(:each) do
    assign(:requerimento, stub_model(Requerimento,
      :datasolicitacao => "MyString",
      :contrato => nil,
      :cliente => nil
    ).as_new_record)
  end

  it "renders new requerimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requerimentos_path, :method => "post" do
      assert_select "input#requerimento_datasolicitacao", :name => "requerimento[datasolicitacao]"
      assert_select "input#requerimento_contrato", :name => "requerimento[contrato]"
      assert_select "input#requerimento_cliente", :name => "requerimento[cliente]"
    end
  end
end
