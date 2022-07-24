# frozen_string_literal: true

module Seasons
  module Entities
    class Season
      delegate :id, :year, :created_at, :updated_at, to: :@season

      def initialize(season_id)
        @season = ::Season.find(season_id)
      end
    end
  end
end
