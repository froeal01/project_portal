class UserAchievement < ActiveRecord::Base
	belongs_to :user_bio
	belongs_to :achievement
end
