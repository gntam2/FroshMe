class ChangeUsersTopics < ActiveRecord::Migration
  def change
  	drop_table :users_topics
  end
end
