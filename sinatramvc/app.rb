require "sinatra"
require "sinatra/activerecord"
require_relative './models/Cat'
require_relative './models/Owner'

set :database, {adapter: 'postgresql', database: 'catsowners', username: ENV['PG_USER'], password: ENV['PG_PASS']}

get '/' do 
    @cats = Cat.all()
    erb :index
end
