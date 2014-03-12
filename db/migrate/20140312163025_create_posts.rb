class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :post_subject
    	t.text :post_body
    	t.belongs_to :user
    	t.belongs_to :project
      t.timestamps
    end
  end
end
