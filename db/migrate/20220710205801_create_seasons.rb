class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.integer :year, null: false, default: -> { "date_part('year', CURRENT_DATE)" }
      t.timestamps
    end
  end
end
