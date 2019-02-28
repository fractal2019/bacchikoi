class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.integer :label_id
      t.integer :genre_name, default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
