class Following < ActiveRecord::Base
  belongs_to :originator, class_name: "User"
  belongs_to :follower, class_name: "User"

  validate :cannot_follow_self

  def cannot_follow_self
    if follower == originator
      errors.add(:followers, "You cannot follow yourself.")
    end
  end
end
