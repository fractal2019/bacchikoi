class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :disc_id
      t.integer :genre_name, default: 0, null: false, limit: 1
      t.integer :track_order

      t.timestamps
    end
  end
end
