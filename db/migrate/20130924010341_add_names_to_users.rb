class AddNamesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :fname, :string
  	add_column :users, :lname, :string 
  	add_column :users, :facebookurl, :string
  	add_column :users, :twitterurl, :string
  	add_column :users, :linkedinurl, :string 
  end
end
