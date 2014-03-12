class CreateProjectTags < ActiveRecord::Migration
  def change
    create_table :project_tags do |t|
    	t.belongs_to :project
    	t.belongs_to :tag
      t.timestamps
    end
  end
end
