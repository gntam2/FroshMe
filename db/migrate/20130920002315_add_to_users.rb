class AddToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :topic_id, :integer
  	add_column :users, :institution_id, :integer 
  end
end
