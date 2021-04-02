class Playlist < ApplicationRecord
   belongs_to :user
   has_many :playlist_queues
   accepts_nested_attributes_for :playlist_queues

   def playlist_track_count
      self.playlist_queues.map {|pq| pq.song}.count
   end

   def playlist_avg_rating
      songs = self.playlist_queues.map {|pq| pq.song}
      ratings = songs.map {|song| song.rating}.sum
      avg_rating = ratings/songs.count

      if avg_rating >= 5
         "⭐ ⭐ ⭐ ⭐ ⭐"
      elsif avg_rating >= 4
         "⭐ ⭐ ⭐ ⭐"
      elsif avg_rating >= 3
         "⭐ ⭐ ⭐"
      elsif avg_rating >= 2 
         "⭐ ⭐"
      elsif avg_rating >= 1
         "⭐"
      elsif avg_rating < 1
         "☹"
      end
   end

end
