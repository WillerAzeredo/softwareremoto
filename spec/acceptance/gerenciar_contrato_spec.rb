# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Contrato' do
  before :each do
  end
  
  scenario 'incluir contrato' do
   
    visit new_contrato_path
    preencher_e_verificar_contrato

  end

  scenario 'alterar contrato' do #, :javascript => true do

    contrato = FactoryGirl.create(:contrato)

    visit edit_contrato_path(contrato)
    preencher_e_verificar_contrato

  end

  scenario 'Excluir contrato' do #, :javascript => true do

    contrato = FactoryGirl.create(:contrato)

    visit contratos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_contrato

    fill_in 'contrato_datainicial', :with => '20/01/2012'
    fill_in 'contrato_datafinal', :with => '12/03/2012'
    fill_in 'contrato_valorestimado', :with => '800 reais'
    fill_in 'contrato_valorfinal', :with => '1500 reais'
    fill_in 'contrato_formapagamento', :with => 'Depósito Bancário'

    click_button 'Salvar'
   
    page.should have_content 'Datainicial: 20/01/2012'
    page.should have_content 'Datafinal: 12/03/2012'
    page.should have_content 'Valorestimado: 800 reais'
    page.should have_content 'Valorfinal: 1500 reais'
    page.should have_content 'Formapagamento: Depósito Bancário'

  end
 
end
