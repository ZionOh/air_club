class Oblog < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    mount_uploader :image, AimageUploader
    self.per_page = 3    

end
