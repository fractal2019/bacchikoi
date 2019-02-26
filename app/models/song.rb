class Song < ApplicationRecord
	belongs_to :artist

	enum genre_name:{JーPOP: 0,洋楽: 1,KーPOP: 2}
end
