class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
      t.string :descricao
      t.string :versao
      t.references :requerimento
      t.references :area
      t.references :situacao
      t.references :reuniao
      t.references :desenvolvedor

      t.timestamps
    end
    add_index :projetos, :requerimento_id
    add_index :projetos, :area_id
    add_index :projetos, :situacao_id
    add_index :projetos, :reuniao_id
    add_index :projetos, :desenvolvedor_id
  end
end
