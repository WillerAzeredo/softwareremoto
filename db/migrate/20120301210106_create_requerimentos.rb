class CreateRequerimentos < ActiveRecord::Migration
  def change
    create_table :requerimentos do |t|
      t.string :datasolicitacao
      t.references :contrato
      t.references :cliente

      t.timestamps
    end
    add_index :requerimentos, :contrato_id
    add_index :requerimentos, :cliente_id
  end
end
