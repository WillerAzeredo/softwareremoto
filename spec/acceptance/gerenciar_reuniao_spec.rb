# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Reuniao' do
  before :each do
  end
  
  scenario 'Incluir Reuniao' do
   
    visit new_reuniao_path
    preencher_e_verificar_reuniao

  end

  scenario 'Alterar Reuniao' do #, :javascript => true do

    reuniao = FactoryGirl.create(:reuniao)

    visit edit_reuniao_path(reuniao)
    preencher_e_verificar_reuniao

  end

  scenario 'Excluir Reuniao' do #, :javascript => true do

    reuniao = FactoryGirl.create(:reuniao)

    visit reuniaos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_reuniao

    fill_in 'reuniao_local', :with => 'IFF'
    fill_in 'reuniao_data', :with => '12/03/2012'
    fill_in 'reuniao_tipo', :with => 'Video Conferência'
    fill_in 'reuniao_hora', :with => '12:30'

    click_button 'Salvar'
   
    page.should have_content 'Local: IFF'
    page.should have_content 'Data: 12/03/2012'
    page.should have_content 'Tipo: Video Conferência'
    page.should have_content 'Hora: 12:30'

  end
 
end
