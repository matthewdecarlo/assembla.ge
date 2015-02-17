class CreateTaggings < ActiveRecord::Migration
  def change
    create_tables :taggings do |t|
      t.references :post
      t.references :tag

      t.timestamps
    end
  end
end
