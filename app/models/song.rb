class Song < ApplicationRecord
    belongs_to :album
    belongs_to :artist
    has_many :playlist_queues
    has_many :playlists, through: :playlist_queues
end
