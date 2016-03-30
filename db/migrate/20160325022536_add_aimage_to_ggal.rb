class AddAimageToGgal < ActiveRecord::Migration
  def change
    add_column :ggals, :image, :string
  end
end
