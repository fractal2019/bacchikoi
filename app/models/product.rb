class Product < ApplicationRecord
	has_many :discs
	has_many :jackets
	has_many :purchase_contents
end
