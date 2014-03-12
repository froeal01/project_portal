class CreateCategoryOfProjects < ActiveRecord::Migration
  def change
    create_table :category_of_projects do |t|
    	t.string :type_of_project
    	t.belongs_to :project
      t.timestamps
    end
  end
end
