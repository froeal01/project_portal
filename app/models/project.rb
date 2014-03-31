class Project < ActiveRecord::Base
	has_many :user_projects
	has_many :users, through: :user_projects
	has_one :category_of_project
	has_many :project_roles
	has_many :roles, through: :project_roles
	has_many :posts
	has_many :project_tags
	has_many :tags, through: :project_tags
	validates_uniqueness_of :project_title, :message => "Sorry. It looks like a project already exists with that title."
	validates_length_of :project_body, :minimum => 150
end
