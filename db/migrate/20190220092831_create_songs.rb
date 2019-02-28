class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name1
      t.string :song_name2
      t.string :song_name3
      t.string :song_name4
      t.string :song_name5
      t.string :song_name6
      t.string :song_name7
      t.string :song_name8
      t.string :song_name9
      t.string :song_name10
      t.string :song_name11
      t.string :song_name12
      t.string :song_name13
      t.string :song_name14
      t.string :song_name15
      t.string :song_name16
      t.string :song_name17
      t.string :song_name18
      t.string :song_name19
      t.string :song_name20
      t.integer :disc_id
      t.integer :track_order


      t.timestamps
    end
  end
end
