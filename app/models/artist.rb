class Artist < ApplicationRecord
	has_many :products
	belongs_to :label

	enum genre_name:{JーPOP: 0,洋楽: 1,KーPOP: 2}
end
