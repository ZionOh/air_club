class AddAimageToEgal < ActiveRecord::Migration
  def change
    add_column :egals, :image, :string
  end
end
