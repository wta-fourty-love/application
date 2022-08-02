# frozen_string_literal: true

RSpec.describe TournamentEdition do
  describe 'database columns' do
    it { should have_db_column(:starts_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:ends_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:season_id).of_type(:integer) }
    it { should have_db_column(:tournament_id).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false, precision: 6) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false, precision: 6) }
  end

  describe 'database indexes' do
    it { should have_db_index(:season_id) }
    it { should have_db_index(:tournament_id) }
  end

  describe 'relationships' do
    it { should belong_to(:tournament) }
    it { should belong_to(:season) }
  end
end
