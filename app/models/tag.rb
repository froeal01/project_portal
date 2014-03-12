class Tag < ActiveRecord::Base
	has_many :project_tags
	has_many :projects, through: :project_tags
	has_many :post_tags
	has_many :posts, through: :post_tags
end
