# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.3'

group :production do
  gem 'pg'
  gem 'sinatra'
end

group :development, :test do
  gem 'capybara'
  gem 'rspec'
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
