class CreateFollowings < ActiveRecord::Migration
  def change
    create_tables :followings do |t|
      t.references :followee
      t.references :follower

      t.timestamps
    end
  end
end
