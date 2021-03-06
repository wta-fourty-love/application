# frozen_string_literal: true

module Seasons
  module Commands
    class Create
      def initialize(params)
        @params_hash = parse_params(params)
      end

      def call
        attributes = validate
        Season.create!(attributes)
      end

      private

      def parse_params(params)
        { year: params[:year] }
      end

      def validate
        ::Contracts::ApplicationContract.validate_with!(Seasons::Commands::Contracts::CreateContract, params: @params_hash)
      end
    end
  end
end
