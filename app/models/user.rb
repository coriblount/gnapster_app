
class User < ApplicationRecord
    has_many :playlists
    has_secure_password
    validates :username, uniqueness: true
    
    def user_playlists
        self.playlists.map do |playlist|
            playlist.name
        end
    end


    
  end

