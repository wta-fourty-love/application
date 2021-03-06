# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort('The Rails environment is running in live mode!') if Rails.env.production? || Rails.env.staging?
require 'rspec/rails'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

require 'simplecov'
SimpleCov.start do
  minimum_coverage 90
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.use_active_record = true
  config.fail_fast = 1
  config.order = :random
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
  # config.profile_examples = 10

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
