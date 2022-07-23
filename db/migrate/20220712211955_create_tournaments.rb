class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :city
      t.integer :editions_count
      t.timestamps
    end
  end
end
