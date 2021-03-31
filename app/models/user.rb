
class User < ApplicationRecord
    has_many :playlists
    has_secure_password
     validates :username, uniqueness: true
     validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
    

  end

