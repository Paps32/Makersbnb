# frozen_string_literal: true

require 'sinatra/base'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    'MakersBnB'
  end

  get '/makers/sign-up' do
    erb :'makers/sign_up'
  end

  post '/makers/sign-up' do
    session[:email] = params[:email]
    session[:password] = params[:password]
    session[:username] = params[:username]
    redirect '/makers/login'
  end

  get '/makers/login' do

  end

  run! if app_file == $0
end
