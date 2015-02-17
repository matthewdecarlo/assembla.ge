require 'faker'

User.create(name: "Miriam", username: "m", password:"123")

5.times do
  User.create!(name: Faker::Name.name,
               username: Faker::Internet.user_name,
               password: "123")
end

# Seed check to verify that user cannot follow self
# Following.create!(originator_id: 1, follower_id: 1)

Following.create!(originator_id: 2, follower_id: 1)
Following.create!(originator_id: 1, follower_id: 2)
Following.create!(originator_id: 3, follower_id: 4)

Post.create!(poster_id: 1, content: "#SomethingAwesome is Coming...")

Tagging.create!(post_id: 1, tag_id: 1)

Tag.create(content: "SomethingAwesome")
