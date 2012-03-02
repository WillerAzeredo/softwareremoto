# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120301211911) do

  create_table "areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "dtnascimento"
    t.string   "email"
    t.string   "funcao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", :force => true do |t|
    t.string   "datainicial"
    t.string   "datafinal"
    t.string   "valorestimado"
    t.string   "valorfinal"
    t.string   "formapagamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desenvolvedors", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "dtnascimento"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projetos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.string   "versao"
    t.integer  "requerimento_id"
    t.integer  "area_id"
    t.integer  "situacao_id"
    t.integer  "reuniao_id"
    t.integer  "desenvolvedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projetos", ["area_id"], :name => "index_projetos_on_area_id"
  add_index "projetos", ["desenvolvedor_id"], :name => "index_projetos_on_desenvolvedor_id"
  add_index "projetos", ["requerimento_id"], :name => "index_projetos_on_requerimento_id"
  add_index "projetos", ["reuniao_id"], :name => "index_projetos_on_reuniao_id"
  add_index "projetos", ["situacao_id"], :name => "index_projetos_on_situacao_id"

  create_table "requerimentos", :force => true do |t|
    t.string   "datasolicitacao"
    t.integer  "contrato_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requerimentos", ["cliente_id"], :name => "index_requerimentos_on_cliente_id"
  add_index "requerimentos", ["contrato_id"], :name => "index_requerimentos_on_contrato_id"

  create_table "reuniaos", :force => true do |t|
    t.string   "local"
    t.string   "data"
    t.string   "tipo"
    t.string   "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "situacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
