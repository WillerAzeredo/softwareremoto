# coding: utf-8

require 'spec_helper'

feature 'Gerenciar Projeto' do
  before :each do
  end
  
  scenario 'incluir projeto' do
        
    area = FactoryGirl.create(:area,:nome => 'Informatica')
    situacao = FactoryGirl.create(:situacao,:nome => 'Em andamento')
    reuniao = FactoryGirl.create(:reuniao,:local => 'IFF')
    desenvolvedor = FactoryGirl.create(:desenvolvedor,:nome => 'Rafael')
    requerimento = FactoryGirl.create(:requerimento,:datasolicitacao => '11/02/2012')
    
    visit new_projeto_path
    preencher_e_verificar_projeto

  end

  scenario 'alterar projeto' do #, :javascript => true do
    
    area = FactoryGirl.create(:area,:nome => 'Informatica')
    projeto = FactoryGirl.create(:projeto, :area => area)
    
    situcao = FactoryGirl.create(:situacao,:nome => 'Em andamento')
    projeto = FactoryGirl.create(:projeto, :situacao => situcao)
    
    reuniao = FactoryGirl.create(:reuniao,:local => 'IFF')
    projeto = FactoryGirl.create(:projeto, :reuniao => reuniao)

    desenvolvedor = FactoryGirl.create(:desenvolvedor,:nome => 'Rafael')
    projeto = FactoryGirl.create(:projeto, :desenvolvedor => desenvolvedor)

    requerimento = FactoryGirl.create(:requerimento,:datasolicitacao => '11/02/2012')
    projeto = FactoryGirl.create(:projeto, :requerimento => requerimento)
     

    visit edit_projeto_path(projeto)
    preencher_e_verificar_projeto

  end

  scenario 'Excluir projeto' do #, :javascript => true do

    area = FactoryGirl.create(:area,:nome => 'Informatica')
    projeto = FactoryGirl.create(:projeto, :area => area)
    
    situcao = FactoryGirl.create(:situacao,:nome => 'Em andamento')
    projeto = FactoryGirl.create(:projeto, :situacao => situcao)
    
    reuniao = FactoryGirl.create(:reuniao,:local => 'IFF')
    projeto = FactoryGirl.create(:projeto, :reuniao => reuniao)

    desenvolvedor = FactoryGirl.create(:desenvolvedor,:nome => 'Rafael')
    projeto = FactoryGirl.create(:projeto, :desenvolvedor => desenvolvedor)

    requerimento = FactoryGirl.create(:requerimento,:datasolicitacao => '11/02/2012')
    projeto = FactoryGirl.create(:projeto, :requerimento => requerimento)

    visit projetos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_projeto

    fill_in 'projeto_nome', :with => 'CADS'
    fill_in 'projeto_descricao', :with => 'Aula POOA'
    fill_in 'projeto_versao', :with => '1.3'  
    select 'Rafael', :on => 'Desenvolvedor'
    select 'Informatica', :on => 'Area'
    select 'Em andamento', :on => 'Situacao'
    select 'IFF', :on => 'Reuniao'
    select '11/02/2012', :on => 'Requerimento'
    
    click_button 'Salvar'

    page.should have_content 'Nome: CADS'
    page.should have_content 'Descricao: Aula POOA'
    page.should have_content 'Versao: 1.3'
    page.should have_content 'Desenvolvedor: Rafael'
    page.should have_content 'Area: Informatica'
    page.should have_content 'Situacao: Em andamento'
    page.should have_content 'Reuniao: IFF'
    page.should have_content 'Requerimento: 11/02/2012'

  end
 
end
