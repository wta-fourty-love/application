require 'spec_config'

RSpec.describe Season do
  describe 'database columns' do
    it { should have_db_column(:year).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false, precision: 6) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false, precision: 6) }
  end
end
