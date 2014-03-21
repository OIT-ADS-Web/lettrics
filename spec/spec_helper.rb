ENV["RAILS_ENV"] = "test"

require File.expand_path("#{File.dirname(__FILE__)}/dummy/config/environment.rb",  __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
