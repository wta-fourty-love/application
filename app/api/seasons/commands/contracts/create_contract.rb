# frozen_string_literal: true

module Seasons
  module Commands
    module Contracts
      class CreateContract < ::Contracts::ApplicationContract
        params do
          required(:year).filled(:integer)
        end

        rule(:year) do
          key.failure('must_be_unique') if all_seasons_years.include?(values[:year])
        end

        rule(:year) do
          key.failure('cannot_be_in_future') if values[:year] > Time.current.year
        end

        private

        def all_seasons_years
          @all_seasons_years ||= Season.all.pluck(:year)
        end
      end
    end
  end
end
