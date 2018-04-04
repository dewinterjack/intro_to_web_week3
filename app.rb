require 'sinatra'

get '/' do
  'Hello World'
end

get '/secret' do
  'My little secret...'
end

get '/jack' do
  'Using shotgun!'
end

get '/random-cat' do
  @name = %w[Amigo Oscar Viking].sample 
  erb(:index)
end 

post '/name' do
  # @type [String]
  p params
  
  erb(:index)
end

get '/form' do
  @name = ''
  @name = @name + params[:name] + ' ' unless params[:name].nil?
  @name = @name += params[:surname] unless params[:surname].nil?
  erb(:form)
end
