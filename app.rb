require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World!"
end

get '/secret' do
  "secret message"
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end
