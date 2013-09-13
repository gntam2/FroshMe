class AddUsersTopics < ActiveRecord::Migration
  def change
    create_table :users_topics do |t|
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
