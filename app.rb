# frozen_string_literal: true

require 'data_mapper'
require 'sinatra/base'
require 'rubygems'
require './lib/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :homepage
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

  end

  get '/makers/spaces/new' do
    erb :'spaces/new'
  end

  run! if app_file == $0
end
