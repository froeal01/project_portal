class User < ActiveRecord::Base
	has_one :user_bio
	has_many :posts
	has_many :comments
	has_many :user_projects
	has_many :projects, :through => :user_projects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
