#############################################################
#### User Posts                                          ####
#############################################################
before '/users/:user_id/posts/:id' do
# make sure that the correct user and post is being viewed
  poster_id = Post.find(params[:id]).poster_id
  unless  poster_id == params[:user_id].to_i
    redirect "/users/#{poster_id}/posts/#{params[:id]}"
  end
end

# refactor later change to be like the before above and write a helper method
before '/users/:user_id/posts/:id/edit' do
  unless current_user.id == params[:user_id].to_i
    redirect "/users/#{params[:user_id]}/posts/#{params[:id]}"
  end
end

before '/users/:user_id/posts/:id/delete' do
  unless current_user.id == params[:user_id].to_i
    redirect "/users/#{params[:user_id]}/posts/#{params[:id]}"
  end
end

get '/users/:id/posts/new' do

end

get '/users/:id/posts' do
  @user = User.find(params[:id])
  @posts = @user.posts
  
  erb :'/posts/show'
end

get '/users/:user_id/posts/:id' do
  @user = User.find(params[:user_id])
  @post = Post.find(params[:id])
  erb :'/posts/post'
end

get '/users/:user_id/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :'posts/edit'
end

put '/users/:user_id/posts/:id' do
  post = Post.find(params[:id])

  if post.update(content: params[:content])
    redirect "/users/#{params[:user_id]}/posts/#{params[:id]}"
  else
    redirect "/users/#{params[:user_id]}/posts/#{params[:id]}/edit"
  end
end

delete '/users/:user_id/posts/:id' do
  post = Post.find(params[:id])
  post.destroy
  redirect '/users/:user_id/posts'
end
