require 'sendgrid-ruby'
require 'sinatra'
include SendGrid

get '/' do
	erb :index	
end

post '/' do
	@data = JSON.parse('{
	  "personalizations": [
	    {
	      "to": [
	        {
	          "email": "john.murphy@nycda.com"
	        }
	      ],
	      "subject": "Sending with SendGrid is Fun"
	    }
	  ],
	  "from": {
	    "email": "@sender"
	  },
	  "content": [
	    {
	      "type": "text/plain",
	      "value": "@content"
	    }
	  ]
	}')
end

sg = SendGrid::API.new(api_key: API)
response = sg.client.mail._("send").post(request_body: @data)

puts response.status_code
puts response.body
puts response.parsed_body
puts response.headers