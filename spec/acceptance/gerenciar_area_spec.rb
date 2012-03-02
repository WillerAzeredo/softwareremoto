# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Area' do
  before :each do
  end
  
  scenario 'Incluir Area' do
   
    visit new_area_path
    preencher_e_verificar_area

  end

  scenario 'Alterar Area' do #, :javascript => true do

    area = FactoryGirl.create(:area)

    visit edit_area_path(area)
    preencher_e_verificar_area

  end

  scenario 'Excluir Area' do #, :javascript => true do

    area = FactoryGirl.create(:area)

    visit areas_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_area

    fill_in 'area_nome', :with => 'Informatica'

    click_button 'Salvar'
   
    page.should have_content 'Nome: Informatica'

  end
 
end
