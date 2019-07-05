require 'data_mapper'
require 'sinatra/base'
require 'rubygems'
require './lib/user.rb'
require './lib/space.rb'
require './db/data_mapper_setup'
require 'dm-postgres-adapter'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/makers/sign-up' do
    erb :sign_up
  end

  post '/makers/sign-up' do
    email = params[:email]
    password = params[:password]
    username = params[:username]
    User.create({
      :email => email,
      :password => password,
      :username => username
      })
    redirect '/makers/login'
  end

  get '/makers/login' do
    erb :login
  end

  post '/makers/login' do    
    user = User.first(:email => params[:email])    
    if user
      redirect "/makers/spaces/#{user.id}"
    else
      redirect '/makers/login'
    end
  end

  get '/makers/spaces/new' do 
    erb :'spaces/new'
  end

  post '/makers/spaces/new' do    
    user = Space.create({
      :name => params[:name],
      :description => params[:description],
      :price => params[:price],
      :user_id => 1
    })
    p user
    redirect "/makers/spaces/#{user.id}"
  end

  get '/makers/spaces/:id' do
    @spaces = Space.all
    erb :'spaces/index'
  end  

  run! if app_file == $0
end
