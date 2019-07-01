require 'sinatra/base'

class MakersBnB < Sinatra::Base

  get '/' do
    'MakersBnB'
  end

  get '/makers/sign-up' do
    erb :'makers/sign_up'
  end




run! if app_file == $0

end
