require 'sinatra'
require 'shotgun'

get '/' do
  "hello!"
end

get '/shotgun' do
  "Bang!"
end

get '/pistol' do
  "pew!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/form' do
  erb :form
end
