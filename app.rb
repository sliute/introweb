require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'Mango icecream for all!'
end

get '/shotgun' do
  'Shotgun is running as advertised'
end

get '/cat' do
  erb(:index)
end
