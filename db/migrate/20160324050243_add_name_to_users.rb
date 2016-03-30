class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :classid, :string
    add_column :users, :image, :string
    add_column :users, :phone, :string
    add_column :users, :aloca, :string
  end
end
