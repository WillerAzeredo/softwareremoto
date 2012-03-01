class CreateReuniaos < ActiveRecord::Migration
  def change
    create_table :reuniaos do |t|
      t.string :local
      t.string :data
      t.string :tipo
      t.string :hora

      t.timestamps
    end
  end
end
