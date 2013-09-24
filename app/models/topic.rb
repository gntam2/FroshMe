class Topic < ActiveRecord::Base
	belongs_to :institution

	has_many :subscriptions
	has_many :users, through: :subscriptions

	def following?(user)
		if subscriptions.find_by(user_id: User.find(user).id)
			true
		else
			 false
		end
	end

	def follow!(user)
		subscriptions.create!(user_id: User.find(user).id)
	end

	def unfollow!(user)
		subscriptions.find_by(user_id: user.id).destroy!
	end

end
