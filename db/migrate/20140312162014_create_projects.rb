class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :project_title
    	t.text :project_body
    	t.string :project_skill_level
    	t.integer :estimated_weekly_hours
    	t.integer :number_of_developers_needed, default: 2
    	t.datetime :next_stand_up
    	t.datetime :deadline
    	t.string :deadline_reason
      t.timestamps
    end
  end
end
