class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	has_many :comments	
	has_many :tags, through: :post_tags
end
