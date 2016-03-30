class CreateYblogs < ActiveRecord::Migration
  def change
    create_table :yblogs do |t|
      t.integer :user_id
      t.text :content
      t.text :url

      t.timestamps null: false
    end
  end
end