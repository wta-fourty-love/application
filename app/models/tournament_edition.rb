# frozen_string_literal: true

class TournamentEdition < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :season
end
