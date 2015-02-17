class Following < ActiveRecord::Base
  belongs_to :followee, class_name: "User"
  belongs_to :follower, class_name: "User"

  validate :cannot_follow_self


  def cannot_follow_self
    if follower == followee
      errors.add(:followers, "You cannot follow yourself.")
    end
  end
end
