class Jacket < ApplicationRecord

	belongs_to :product

attachment :image
	belongs_to :product
end
