class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :born_on
      t.string :place_of_birth
      t.float :height, precision: 3, scale: 2
      t.boolean :active, default: true
      t.string :wikipedia_url
      t.references :country, foreign_key: true
      t.timestamps
    end
  end
end
