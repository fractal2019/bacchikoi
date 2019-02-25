class PurchaseHistory < ApplicationRecord
	has_many :purchase_contents, dependent: :destroy
	belongs_to :user
end
