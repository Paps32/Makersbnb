require 'data_mapper'
require 'dm-core'

# DATABASE_URL = "postgres://localhost/makersbnb_test"
# DataMapper.setup(:default, DATABASE_URL)

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password, String
  property :username, String

  has n, :space
end
