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
    erb :'makers/sign_up'
  end

  post '/makers/sign-up' do
    email = params[:email]
    password = params[:password]
    username = params[:username]
    User.sign_up(email: email, password: password, username: username)
    redirect '/makers/login'
  end

  get '/makers/login' do

  end

  run! if app_file == $0
end
