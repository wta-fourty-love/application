# frozen_string_literal: true

RSpec.describe Tournament do
  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:city).of_type(:string) }
    it { should have_db_column(:editions_count).of_type(:integer) }
    it { should have_db_column(:country_id).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false, precision: 6) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false, precision: 6) }
  end

  describe 'database indexes' do
    it { should have_db_index(:country_id) }
  end

  describe 'relationships' do
    it { should belong_to(:country) }
    it { should have_many(:tournament_editions) }
  end
end
