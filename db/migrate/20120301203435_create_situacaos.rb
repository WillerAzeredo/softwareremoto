class CreateSituacaos < ActiveRecord::Migration
  def change
    create_table :situacaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
