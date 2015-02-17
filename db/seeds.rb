require 'faker'

5.times do
  User.create!( username: Faker::Internet.user_name,
               password: "1")
end

# Seed check to verify that user cannot follow self
# Following.create!(followee_id: 1, follower_id: 1)

Post.create!(poster_id: 1, content: "#SomethingAwesome is Coming...")

Tagging.create!(post_id: 1, tag_id: 1)

Tag.create(content: "SomethingAwesome")
