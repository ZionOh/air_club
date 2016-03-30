class Ggal < ActiveRecord::Base
    belongs_to :user
    mount_uploader :image, AimageUploader
end
