class Jacket < ApplicationRecord

attachment :image
	belongs_to :product
end
