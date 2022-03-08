require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello, world."
end

get '/secret' do
  "Secret message"
end

get '/about' do
  "About page!"
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample 
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

