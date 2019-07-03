require 'data_mapper'

DATABASE_URL = "postgres://localhost/makersbnb_test"
DataMapper.setup(:default, DATABASE_URL)

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password, String
  property :username, String
end

User.auto_upgrade!
