class Artist < ApplicationRecord
	belongs_to :label
	has_many :products, inverse_of: :artist
	accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true

	enum genre_name:{JーPOP: 0,洋楽: 1,KーPOP: 2}
end
