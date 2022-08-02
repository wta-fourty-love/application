# frozen_string_literal: true

RSpec.describe Player do
  describe 'database columns' do
    it { should have_db_column(:first_name).of_type(:string) }
    it { should have_db_column(:last_name).of_type(:string) }
    it { should have_db_column(:born_on).of_type(:date) }
    it { should have_db_column(:place_of_birth).of_type(:string) }
    it { should have_db_column(:height).of_type(:decimal).with_options(precision: 3, scale: 2) }
    it { should have_db_column(:active).of_type(:boolean).with_options(default: true) }
    it { should have_db_column(:wikipedia_url).of_type(:string) }
    it { should have_db_column(:country_id).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false, precision: 6) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false, precision: 6) }
  end

  describe 'database indexes' do
    it { should have_db_index(:country_id) }
  end

  describe 'relationships' do
    it { should belong_to(:country) }
  end
end
