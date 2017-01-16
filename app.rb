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

get '/random-cat' do
  @name = ['Amigo','Oscar','Viking'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:named_cat)
end

get '/naming' do
  erb(:naming)
end
