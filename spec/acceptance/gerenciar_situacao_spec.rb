# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Situacao' do
  before :each do
  end
  
  scenario 'Incluir Situacao' do
   
    visit new_situacao_path
    preencher_e_verificar_situacao

  end

  scenario 'Alterar Situacao' do #, :javascript => true do

    situacao = FactoryGirl.create(:situacao)

    visit edit_situacao_path(situacao)
    preencher_e_verificar_situacao

  end

  scenario 'Excluir Situacao' do #, :javascript => true do

    situacao = FactoryGirl.create(:situacao)

    visit situacaos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_situacao

    fill_in 'situacao_nome', :with => 'Informatica'

    click_button 'Salvar'
   
    page.should have_content 'Nome: Informatica'

  end
 
end
