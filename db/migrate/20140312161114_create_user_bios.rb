class CreateUserBios < ActiveRecord::Migration
  def change
    create_table :user_bios do |t|
    	t.string :about_me
    	t.hstore :user_languages
    	t.integer :reputation
    	t.belongs_to :user
      t.timestamps
    end
  end
end
