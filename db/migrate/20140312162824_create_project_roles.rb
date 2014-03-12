class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
    	t.belongs_to :project
    	t.belongs_to :role
      t.timestamps
    end
  end
end
