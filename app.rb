require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello again!"
end

get '/secret' do
  "shhhhh....!"
end

get '/random_cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named_cat' do
  puts params
  @random_name = params[:name]
  @colour = params[:colour]
  @adorable = true
  erb(:index)
end

get '/cat_form' do
  erb :cat_form
end
