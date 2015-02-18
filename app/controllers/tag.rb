get '/tags' do
  @tags = Tag.all
  erb :'tags/show'
end
