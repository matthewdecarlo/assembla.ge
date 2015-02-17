class CreateTags < ActiveRecord::Migration
  def change
    create_tables :tags do |t|
      t.string :content

      t.timestamps
    end
  end
end
