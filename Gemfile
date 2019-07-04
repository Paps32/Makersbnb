# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.5.0'

group :production do
  gem 'data_mapper'
  gem 'dm-postgres-adapter'
  gem 'pg'
  gem 'sinatra'
end

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rspec'  
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
