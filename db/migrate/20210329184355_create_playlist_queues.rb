class CreatePlaylistQueues < ActiveRecord::Migration[6.1]
  def change
    create_table :playlist_queues do |t|
      t.integer :playlist_id
      t.integer :artist_id
      t.integer :album_id
      t.integer :song_id

      t.timestamps
    end
  end
end
