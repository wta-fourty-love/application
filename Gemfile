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
gem 'sprockets-rails', '~> 3.4', '>= 3.4.2'

# SASS processor
gem 'dartsass-rails', '~> 0.4.0'

# Postgres Database adapter for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails],
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev],
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'importmap-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Validations:
gem 'dry-validation'

# Code style and formatting
gem 'rubocop', '~> 1.31', '>= 1.31.2', require: false
gem 'rubocop-rspec', '~> 2.12', '>= 2.12.1', require: false

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end

group :development, :test do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'license_finder'
  gem 'pry', '~> 0.13.1'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.0.rc1'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false
end
