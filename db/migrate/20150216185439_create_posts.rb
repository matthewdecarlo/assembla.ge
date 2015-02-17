class CreatePosts < ActiveRecord::Migration
  def change
    create_tables :posts do |t|
      t.string     :content
      t.references :poster

      t.timestamps
    end
  end
end
