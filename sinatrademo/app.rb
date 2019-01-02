require 'sinatra'
require 'rubyjokes'

get '/' do
	erb :index
end

# note this for discussing in class this week

post '/postroute' do
	joketype = params[:joketype]
	joke = RubyJoke.new
	xyz = joke.get_joke({limitTo: [joketype]})
	erb :index, :locals => {:joke => xyz}
end

