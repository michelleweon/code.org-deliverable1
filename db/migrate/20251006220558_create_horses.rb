class CreateHorses < ActiveRecord::Migration[8.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.boolean :sex

      t.timestamps
    end
  end
end
