class User < ActiveRecord::Base
  mount_uploader :image, AimageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  devise :database_authenticatable, :validatable, password_length: 1..12
  
  has_many :yblogs
  has_many :oblogs
  has_many :anncts
  has_many :comments
  has_many :egals
  has_many :ggals
  has_many :agals
  belongs_to :comments
    
end
