require 'sinatra'
require 'rubyjokes'

get '/' do
	erb :index
end


post '/postroute' do
	joketype = params[:joketype]
	joke = RubyJoke.new
	xyz = joke.get_joke({limitTo: [joketype]})
	erb :index, :locals => {:joke => xyz}
end

