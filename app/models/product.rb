class Product < ApplicationRecord
	# 下記２行cocoon記述
	has_many :discs, inverse_of: :product
	accepts_nested_attributes_for :discs, reject_if: :all_blank, allow_destroy: true

	has_many :jackets
	has_many :purchase_contents
  

	has_many :cart_contents, dependent: :destroy
	has_many :discs, dependent: :destroy
	has_many :jackets, dependent: :destroy
	has_many :purchase_histroys
	belongs_to :label

	attachment :jacket_image

	enum type_name:{シングル: 0,アルバム: 1}
end
