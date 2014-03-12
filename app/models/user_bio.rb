class UserBio < ActiveRecord::Base
	belongs_to :user
	has_many :user_achievements
	has_many :achievements, through: :user_achievements
end
