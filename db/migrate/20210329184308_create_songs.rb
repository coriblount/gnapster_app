class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :length
      t.integer :rating
      t.integer :artist_id
      t.integer :album_id

      t.timestamps
    end
  end
end
