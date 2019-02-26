class Artist < ApplicationRecord
	has_many :products
	belongs_to :label
end
