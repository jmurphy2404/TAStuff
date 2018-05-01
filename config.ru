#config file for heroku sinatra app 
#use database1.yml as well in config directory

require './app.rb'

run Sinatra::application

#comment out database adapter in app.rn
#may need to require the models here as well to deploy to heroku
