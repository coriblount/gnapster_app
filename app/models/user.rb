
class User < ApplicationRecord
   has_many :images
    has_many :playlists
    mount_uploader :image, ImageUploader
    has_secure_password
     validates :username, uniqueness: true
     validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
    

  end

