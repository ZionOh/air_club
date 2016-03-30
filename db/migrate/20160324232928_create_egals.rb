class CreateEgals < ActiveRecord::Migration
  def change
    create_table :egals do |t|
      t.integer :user_id
      t.text :content
      t.text :title

      t.timestamps null: false
    end
  end
end
