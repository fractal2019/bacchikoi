class Song < ApplicationRecord
	belongs_to :disc
	has_many :songs_artists
end
