class CreateProjectTags < ActiveRecord::Migration
  def change
    create_table :project_tags do |t|
    	t.belongs_to :tag
    	t.belongs_to :project
      t.timestamps
    end
  end
end
