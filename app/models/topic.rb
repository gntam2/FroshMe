class Topic < ActiveRecord::Base
	belongs_to :institution

	has_many :users_topics
	has_many :users, through: :users_topics
end
