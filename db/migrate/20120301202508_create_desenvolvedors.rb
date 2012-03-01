class CreateDesenvolvedors < ActiveRecord::Migration
  def change
    create_table :desenvolvedors do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :cpf
      t.string :rg
      t.string :dtnascimento
      t.string :email

      t.timestamps
    end
  end
end
