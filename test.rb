get '/users/all' do
	@allusers = User.all
	erb :all
end

get '/user/:id' do
	@specific_user = User.find(params[:id])
	erb :show
end