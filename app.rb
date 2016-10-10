require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello again!"
end

get '/secret' do
  "shhhhh....!"
end

get '/cat' do
  "<div> <img src='http://bit.ly/1eze8aE'> </div>"
end
