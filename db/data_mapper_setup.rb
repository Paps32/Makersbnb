require 'data_mapper'
require 'dm-postgres-adapter'

require_relative '../lib/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")

# This checks the models for validity + initializes all properties associated with relationships.
DataMapper.finalize

# Create tables if they don't exist.
DataMapper.auto_upgrade!
