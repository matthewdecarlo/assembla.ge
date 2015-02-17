get '/login' do 
  erb :'auth/login'
end

post '/login' do
  user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])

 p user

  if user 
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/login'
  end
end
