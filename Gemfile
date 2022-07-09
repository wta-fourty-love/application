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

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Validations:
gem 'dry-validation'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
end

group :development, :test do
  gem 'brakeman'
  gem 'bundler-audit'
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry', '~> 0.13.1'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.0.rc1'
  gem 'shoulda-matchers', '~> 5.0'
end
