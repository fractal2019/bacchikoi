class Song < ApplicationRecord

	belongs_to :disc


	enum genre_name:{JーPOP: 0,洋楽: 1,KーPOP: 2}

end
