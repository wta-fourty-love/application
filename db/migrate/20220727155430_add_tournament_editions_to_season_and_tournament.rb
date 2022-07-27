class AddTournamentEditionsToSeasonAndTournament < ActiveRecord::Migration[7.0]
  def change
    add_reference :tournament_editions, :season, index: true, foreign_key: true
    add_reference :tournament_editions, :tournament, index: true, foreign_key: true
  end
end
