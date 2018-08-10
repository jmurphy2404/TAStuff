require "sinatra"
require "sinatra/activerecord"
require_relative './models/Cat'
require_relative './models/Owner'

set :database, {adapter: 'postgresql', database: 'catsowners', username: ENV['PG_USER'], password: ENV['PG_PASS']}

get '/' do 
    @cats = Cat.all()
    erb :index
end


get '/cat/:id' do
	# some code
end

get '/cat/new' do
	#some code that won't run unless this is moved above the '/cat/:id' route
end