class CreateSongsArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :songs_artists do |t|

      t.timestamps
    end
  end
end
