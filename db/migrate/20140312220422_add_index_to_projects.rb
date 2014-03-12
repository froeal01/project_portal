class AddIndexToProjects < ActiveRecord::Migration
  def change
	add_index "projects", :project_title, unique: true
  end
end
