class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :datainicial
      t.string :datafinal
      t.string :valorestimado
      t.string :valorfinal
      t.string :formapagamento

      t.timestamps
    end
  end
end
