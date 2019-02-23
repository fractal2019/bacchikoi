class Product < ApplicationRecord

	has_many :cart_contents, dependent: :destroy
	has_many :discs, dependent: :destroy
	has_many :jackets, dependent: :destroy
	has_many :purchase_histroys
	belongs_to :label
end
