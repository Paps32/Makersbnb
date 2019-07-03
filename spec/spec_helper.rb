# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'rubocop'
require 'simplecov'
require 'simplecov-console'

# Tell Capybara to talk to BookmarkManager
Capybara.app = MakersBnB

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|  
  config.expect_with :rspec do |expectations|    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  config.mock_with :rspec do |mocks|   
    mocks.verify_partial_doubles = true
  end
  
  config.shared_context_metadata_behavior = :apply_to_host_groups
 
end
