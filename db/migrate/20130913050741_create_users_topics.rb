class CreateUsersTopics < ActiveRecord::Migration
  def change
    create_table :users_topics do |t|
      t.integer :user_id
      t.integer :topics_id

      t.timestamps
    end
  end
end
