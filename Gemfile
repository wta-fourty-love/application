source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Rails Core libraries:
gem 'activerecord', '7.0.3'
gem 'activemodel', '7.0.3'
gem 'actionpack', '7.0.3'
gem 'actiontext', '7.0.3'
gem 'activejob', '7.0.3'
gem 'activestorage', '7.0.3'
gem 'activesupport', '7.0.3'
gem 'actionview', '7.0.3'
gem 'railties', '7.0.3'

# Postgres Database adapter for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails], Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev], Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Validations:
gem 'dry-validation'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'pry', '~> 0.13.1'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.0.rc1'
  gem 'shoulda-matchers', '~> 5.0'
end
