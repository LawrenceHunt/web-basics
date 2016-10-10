require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello again!"
end

get '/secret' do
  "shhhhh....!"
end

get '/cat' do
  erb(:index)
end
