class AddArtistIdToSongsArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :songs_artists, :artist_id, :integer
  end
end
