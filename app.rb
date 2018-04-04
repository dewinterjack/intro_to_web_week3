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

get '/named-cat' do
  unless params.empty?
    @fname = params[:name] + ' '
    @sname = params[:surname]
    p params
  end
  erb(:index)
end
