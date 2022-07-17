if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start do
    minimum_coverage 90
  end
  puts "required simplecov"
end
