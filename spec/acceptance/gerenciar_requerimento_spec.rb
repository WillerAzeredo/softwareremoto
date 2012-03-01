# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Requerimento' do
  before :each do
  end
  
  scenario 'incluir requerimento' do
        
    cliente = FactoryGirl.create(:cliente,:nome => 'Rafael')
    contrato = FactoryGirl.create(:contrato,:datainicial => '11/02/2012')
    
    visit new_requerimento_path
    preencher_e_verificar_requerimento

  end

  scenario 'alterar requerimento' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente,:nome => 'Rafael')
    requerimento = FactoryGirl.create(:requerimento, :cliente => cliente)


    contrato = FactoryGirl.create(:contrato,:datainicial => '11/02/2012')
    requerimento = FactoryGirl.create(:requerimento, :contrato => contrato)
     

    visit edit_requerimento_path(requerimento)
    preencher_e_verificar_requerimento

  end

  scenario 'Excluir requerimento' do #, :javascript => true do

    cliente = FactoryGirl.create(:cliente,:nome => 'Rafael')
    requerimento = FactoryGirl.create(:requerimento, :cliente => cliente)


    contrato = FactoryGirl.create(:contrato,:datainicial => '11/02/2012')
    requerimento = FactoryGirl.create(:requerimento, :contrato => contrato)

    visit requerimentos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_requerimento

    fill_in 'requerimento_datasolicitacao', :with => '28/12/2011'  
    select 'Rafael', :on => 'Cliente'
    select '11/02/2012', :on => 'Contrato'
    
    click_button 'Salvar'

    page.should have_content 'Datasolicitacao: 28/12/2011'
    page.should have_content 'Cliente: Rafael'
    page.should have_content 'Contrato: 11/02/2012'

  end
 
end
