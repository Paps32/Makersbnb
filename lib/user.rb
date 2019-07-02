require 'data_mapper'

DATABASE_URL = "postgres://student@127.0.0.1:5432/makersbnb_test"
DataMapper.setup(:default, DATABASE_URL)

class User
  p ENV
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password, String
  property :username, String

  def self.sign_up(email:, password:, username:)
    User.create({
      :email => email,
      :password => password,
      :username => username
      })
  end
end

User.auto_upgrade!
user = User.new
user.email = 'lovecoding@makers.com'
user.password = 'makers'
user.username = 'WhoDoesntLoveCoding'
user.save!

puts "default database"
p User.all
p User.first(:username => 'WhoDoesntLoveCoding')

puts "-----"
