# frozen_string_literal: true

RSpec.describe Season do
  describe 'database columns' do
    it { should have_db_column(:year).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false, precision: 6) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false, precision: 6) }
  end

  describe 'relationships' do
    it { should have_many(:tournament_editions) }
  end
end
