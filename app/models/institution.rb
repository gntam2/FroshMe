class Institution < ActiveRecord::Base
	has_many :topics
	has_many :users
end