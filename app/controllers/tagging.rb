# get '/tags' do
#   @tags = Tag.all
#   erb :'tags/show'
# end


# create a tagging
post "/posts/:id/taggings" do
  tag = Tag.find(params[:tag_id])
  Tagging.create(tag: tag, post: Post.find(params[:id]))

  content_type :json
  {message: "Added tag #{tag.name} to post."}

end

  #   if request.xhr?

  # else
