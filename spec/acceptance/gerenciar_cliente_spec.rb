# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do
  before :each do
  end
  
  scenario 'incluir cliente' do
   
    visit new_cliente_path
    preencher_e_verificar_cliente
    

  end

  scenario 'alterar cliente' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente

  end

  scenario 'excluir cliente' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente)

    visit clientes_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_cliente

    fill_in 'cliente_nome', :with => "Willer Azeredo"
    fill_in 'cliente_telefone', :with => "9985-2547"
    fill_in 'cliente_endereco', :with => "Rua da Paz"
    fill_in 'cliente_cpf', :with => "14232809761"
    fill_in 'cliente_rg', :with => "423920293"
    fill_in 'cliente_dtnascimento', :with => "140491"
    fill_in 'cliente_email', :with => "willerazeredo@gmail.com"
    fill_in 'cliente_funcao', :with => "Programador"
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Willer Azeredo'
    page.should have_content 'Telefone: 9985-2547'
    page.should have_content 'Endereco: Rua da Paz'
    page.should have_content 'Cpf: 14232809761'
    page.should have_content 'Rg: 423920293'
    page.should have_content 'Dtnascimento: 140491'
    page.should have_content 'Email: willerazeredo@gmail.com'
    page.should have_content 'Funcao: Programador'

  end
 
end
