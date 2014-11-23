require 'pry'
require 'sinatra'
require 'dotenv'
require 'omniauth-github'


Dotenv.load

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']

  use OmniAuth::Builder do
    provider :github, ENV['GITHUB_ID'], ENV['GITHUB_SECRET']
  end
end

get '/' do
  erb :home
end

get '/auth/github/callback' do
  binding.pry

end
