require 'spec_helper'

describe "situacaos/edit" do
  before(:each) do
    @situacao = assign(:situacao, stub_model(Situacao,
      :nome => "MyString"
    ))
  end

  it "renders the edit situacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => situacaos_path(@situacao), :method => "post" do
      assert_select "input#situacao_nome", :name => "situacao[nome]"
    end
  end
end
