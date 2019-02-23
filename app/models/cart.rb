class Cart < ApplicationRecord

	has_many :cart_contents, dependent: :destroy
	belongs_to :user

end
