class AddColumnsToUserTable < ActiveRecord::Migration
  def change
  	add_column :users, :e_mail, :string
  	add_column :users, :account_name, :string
  	add_column :users, :first_name, :string
  	add_column :users, :admin, :boolean, default: false
  end
end
