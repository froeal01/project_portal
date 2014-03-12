class Achievement < ActiveRecord::Base
	has_many :user_achievements
	has_many :user_bios, through: :user_achievements
end
