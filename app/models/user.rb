class User < ActiveRecord::Base
    has_secure_password
    has_many :posts
    has_many :taggings, through: :posts
    has_many :tags, through: :taggings
    has_many :followings, foreign_key: :followee_id
    has_many :followings, foreign_key: :follower_id
    has_many :followers, through: :followings#, foreign_key: :followee_id
    has_many :followees, through: :followings#, foreign_key: :follower_id

    validates_associated :followers, :followees

    # validates :followees, uniqueness: true, scope: :followe
    # validate  :follower_not_followee?
    # validate  :followee_not_follower?

    # def follower_not_followee?
    #   if followers.include?(self)
    #   errors.add(:followers, "Cannot follow yourself")
    #   end
    # end

    # def followee_not_follower?
    #   if followees.include?(self)
    #   errors.add(:followers, "Cannot follow yourself")
    #   end
    # end

end
