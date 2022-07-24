# frozen_string_literal: true

RSpec.describe Seasons::Entities::Season do
  let!(:season) { create(:season) }

  describe 'delegated attributes' do
    subject { described_class.new(season.id) }

    it 'returns values' do
      subject
      expect(Season.last).to have_attributes(
        id: season.id,
        year: 2022,
        created_at: season.created_at,
        updated_at: season.updated_at
      )
    end
  end
end
