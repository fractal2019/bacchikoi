class Song < ApplicationRecord
	belongs_to :disc
	has_many :song_artists
end
