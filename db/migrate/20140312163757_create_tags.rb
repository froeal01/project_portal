class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.string :language
    	t.string :taggable_type
    	t.belongs_to :taggable
      t.timestamps
    end
  end
end
