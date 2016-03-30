class AddAimageToYblog < ActiveRecord::Migration
  def change
    add_column :yblogs, :image, :string
  end
end
