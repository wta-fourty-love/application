RSpec.describe Countries::Entities::Country do
  let!(:country) { create(:country) }

  describe 'delegated attributes' do
    subject { described_class.new(country.id) }

    it 'returns values' do
      subject
      expect(Country.last).to have_attributes(
        id: country.id,
        name: 'poland',
        iso_code: 'pl'
      )
    end
  end
end