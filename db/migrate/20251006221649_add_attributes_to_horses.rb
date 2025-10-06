class AddAttributesToHorses < ActiveRecord::Migration[8.0]
  def change
    add_column :horses, :age, :integer
    add_column :horses, :breed, :string
    add_column :horses, :color, :string
    add_column :horses, :personality, :text
    add_column :horses, :bio, :text
    add_column :horses, :location, :string
  end
end
