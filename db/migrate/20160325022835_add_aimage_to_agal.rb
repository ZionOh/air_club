class AddAimageToAgal < ActiveRecord::Migration
  def change
    add_column :agals, :image, :string
  end
end
