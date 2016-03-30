class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :msg
      t.integer :yblog_id
      t.integer :oblog_id
      t.integer :annct_id
      t.integer :pblog_id
      
      t.timestamps null: false
    end
  end
end
