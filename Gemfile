source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Rails Core libraries:
gem 'actionpack', '7.0.3.1'
gem 'actionview', '7.0.3.1'
gem 'activejob', '7.0.3.1'
gem 'activemodel', '7.0.3.1'
gem 'activerecord', '7.0.3.1'
gem 'activesupport', '7.0.3.1'
gem 'railties', '7.0.3.1'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails', '3.4.2'

# Postgres Database adapter for Active Record
gem 'pg', '1.4.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '5.6.4'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails],
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev],
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'importmap-rails', '1.1.2'
gem 'stimulus-rails', '1.0.4'
gem 'turbo-rails', '1.1.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.12.0', require: false

# validations / contracts:
gem 'dry-validation', '1.8.1'

# class initialization:
gem 'dry-initializer', '3.1.1'

# type system:
gem 'dry-types', '1.5.1'

# code style and formatting:
gem 'rubocop', '1.31.2', require: false
gem 'rubocop-rspec', '2.12.1', require: false

# Slack integration:
gem 'slack-notifier', '2.4.0'

# Sentry monitoring integration:
gem 'sentry-rails', '5.4.1'
gem 'sentry-ruby', '5.4.1'
# TODO: add after Sidekiq integration:
# gem 'sentry-sidekiq'

# SASS processing:
gem 'dartsass-rails', '0.4.0'

group :development do
  gem 'better_errors', '2.9.1'
  gem 'binding_of_caller', '1.0.0'
  gem 'bullet', '7.0.2'
end

group :development, :test do
  gem 'brakeman', '5.2.3'
  gem 'bundler-audit', '0.9.1'
  gem 'license_finder', '7.0.1'
  gem 'pry', '0.13.1'
end

group :test do
  gem 'factory_bot_rails', '6.2.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'rspec-rails', '6.0.0.rc1'
  gem 'shoulda-matchers', '5.1.0'
  gem 'simplecov', '0.21.2', require: false
end
