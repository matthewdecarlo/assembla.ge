require 'faker'

5.times do
  User.create!( username: Faker::Internet.user_name,
               password: "1")
end

Following.create!(followee_id: 1, follower_id: 1)
