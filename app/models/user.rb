
class User < ApplicationRecord
    has_many :playlists
    has_secure_password
     validates :username, uniqueness: true
    

  end

