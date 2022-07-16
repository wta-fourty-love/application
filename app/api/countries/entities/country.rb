module Countries
  module Entities
    class Country
      delegate :id, :name, :iso_code, :created_at, :updated_at, to: :@country

      def initialize(country_id)
        @country = ::Country.find(country_id)
      end
    end
  end
end
