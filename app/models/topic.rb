class Topic < ActiveRecord::Base
	belongs_to :institution

	has_many :users_topics, foreign_key: "topic_id"
	has_many :users, through: :users_topics


	def follow!(user, topic)
		users_topics.create!(user_id: User.find(user).id, topic_id: Topic.find(topic).id)
	end

end
