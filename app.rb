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

get '/cat' do
    '<div>
      <img style="border: dashed red 5px"; src="https://i.imgur.com/jFaSxym.png"/>
    </div>'
end