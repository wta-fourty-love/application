# frozen_string_literal: true

RSpec.describe Countries::Entities::Country do
  let!(:country) { create(:country) }

  describe 'delegated attributes' do
    subject { described_class.new(country.id) }

    it 'returns values' do
      subject
      expect(Country.last).to have_attributes(
        id: country.id,
        name: 'poland',
        iso_code: 'pl',
        created_at: country.created_at,
        updated_at: country.updated_at
      )
    end
  end
end
