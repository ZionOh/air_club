class AddAimageToAnnct < ActiveRecord::Migration
  def change
    add_column :anncts, :image, :string
  end
end
