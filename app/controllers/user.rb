#############################################################
#### Basics for User RESTful CRUD                        ####
#############################################################
before '/users/:id/*' do
	unless current_user.id == params[:id].to_i
		redirect "/users/#{params[:id]}"
	end
end

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect "/users/#{user.id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/users/:id/edit' do
  erb :'users/edit'
end

put '/users/:id/edit' do
	if @contact.update(params["contact"])
    redirect "/users/#{current_user.id}"
  else
    redirect "/users/#{current_user.id}/edit"
  end
	
end

delete '/users/:id/delete' do

end

def ensure_login

end

#############################################################
####                                                     ####
#############################################################
