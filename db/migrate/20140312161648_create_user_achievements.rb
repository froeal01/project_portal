class CreateUserAchievements < ActiveRecord::Migration
  def change
    create_table :user_achievements do |t|
    	t.belongs_to :user_bio
    	t.belongs_to :achievement 
      t.timestamps
    end
  end
end
