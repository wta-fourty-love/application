class AddTournamentsToCountry < ActiveRecord::Migration[7.0]
  def change
    add_reference :tournaments, :country, index: true, foreign_key: true
  end
end
