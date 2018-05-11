get '/users/all' do
	@allusers = User.all
	erb :all
end

get '/user/:id' do
	@specific_user = User.find(params[:id])
	erb ":/views/show/edit"
end


new_cohort_path cohort#new /cohort/new

cohort_path cohort#show  /cohort/:id

edit_cohort_path cohort#edit /cohort/:id/edit