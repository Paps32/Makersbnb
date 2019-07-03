require 'data_mapper'

DATABASE_URL = "postgres://localhost/makersbnb_test"
DataMapper.setup(:default, DATABASE_URL)

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, String
  property :price, Intåeger

  belongs_to :user
end
     
    # Space.auto_upgrade!
