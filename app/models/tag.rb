class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :posts, through: :taggings
  has_many :users, through: :posts
end
