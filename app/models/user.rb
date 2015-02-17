class User < ActiveRecord::Base
    has_many :posts
    has_many :taggings, through: :posts
    has_many :tags, through: :taggings
    has_many :followings
    has_many :followers, through: :followings, foreign_key: :followee_id
    has_many :followees, through: :followings, foreign_key: :follower_id
end
