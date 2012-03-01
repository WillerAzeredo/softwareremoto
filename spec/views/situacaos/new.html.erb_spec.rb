require 'spec_helper'

describe "situacaos/new" do
  before(:each) do
    assign(:situacao, stub_model(Situacao,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new situacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => situacaos_path, :method => "post" do
      assert_select "input#situacao_nome", :name => "situacao[nome]"
    end
  end
end
