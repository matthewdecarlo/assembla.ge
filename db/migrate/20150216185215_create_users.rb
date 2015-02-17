class CreateUsers < ActiveRecord::Migration
  def change
    create_tables :users do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
