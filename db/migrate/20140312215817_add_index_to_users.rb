class AddIndexToUsers < ActiveRecord::Migration
  def change
  	add_index "users", :account_name, :unique => true
   end
end
