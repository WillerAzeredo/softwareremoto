require 'spec_helper'

feature 'Gerenciar Desenvolvedor' do
  before :each do
  end
  
  scenario 'incluir desenvolvedor' do
   
    visit new_desenvolvedor_path
    preencher_e_verificar_desenvolvedor

  end

  scenario 'alterar desenvolvedor' do #, :javascript => true do

    desenvolvedor = FactoryGirl.create(:desenvolvedor)

    visit edit_desenvolvedor_path(desenvolvedor)
    preencher_e_verificar_desenvolvedor

  end

  scenario 'Excluir desenvolvedor' do #, :javascript => true do

    desenvolvedor = FactoryGirl.create(:desenvolvedor)

    visit desenvolvedors_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_desenvolvedor

    fill_in 'desenvolvedor_nome', :with => "Willer Azeredo"
    fill_in 'desenvolvedor_telefone', :with => "9985-2547"
    fill_in 'desenvolvedor_endereco', :with => "Rua da Paz"
    fill_in 'desenvolvedor_cpf', :with => "14232809761"
    fill_in 'desenvolvedor_rg', :with => "423920293"
    fill_in 'desenvolvedor_dtnascimento', :with => "140491"
    fill_in 'desenvolvedor_email', :with => "willerazeredo@gmail.com"
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Willer Azeredo'
    page.should have_content 'Telefone: 9985-2547'
    page.should have_content 'Endereco: Rua da Paz'
    page.should have_content 'Cpf: 14232809761'
    page.should have_content 'Rg: 423920293'
    page.should have_content 'Dtnascimento: 140491'
    page.should have_content 'Email: willerazeredo@gmail.com'

  end
 
end
