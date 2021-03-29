class Album < ApplicationRecord
    belongs_to :artist
    has_many :songs
    has_many :playlist_queues
    has_many :playlists, through :playlist_queues
end
