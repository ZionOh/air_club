class AddAimageToOblog < ActiveRecord::Migration
  def change
    add_column :oblogs, :image, :string
  end
end
