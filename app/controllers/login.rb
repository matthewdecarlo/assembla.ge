get '/login' do 
  erb :login
end

post '/login' do
  user = User.find_by(username: params[:user]["name"]).try(:authentiate, params[:user]["password"])

  if user 
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/login'
  end
end
