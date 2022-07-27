class CreateTournamentEditions < ActiveRecord::Migration[7.0]
  def change
    create_table :tournament_editions do |t|
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.timestamps
    end
  end
end
