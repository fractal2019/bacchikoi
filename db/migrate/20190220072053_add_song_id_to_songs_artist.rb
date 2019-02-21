class AddSongIdToSongsArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :songs_artists, :song_id, :integer
  end
end
