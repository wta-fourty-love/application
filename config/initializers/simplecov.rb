if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start
  puts "required simplecov"
end