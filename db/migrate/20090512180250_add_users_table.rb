class AddUsersTable < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :description, :string
    add_column :users, :username, :string
    add_column :users, :encrypted_password, :string
    add_column :users, :salt, :string
    
  end

  def self.down
    drop_table :users
  end
end
