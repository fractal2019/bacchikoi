class Disc < ApplicationRecord
	belongs_to :product
	has_many :artists#, inverse_of: :disc
	#accepts_nested_attributes_for :songs, reject_if: :all_blank, allow_destroy: true
end
