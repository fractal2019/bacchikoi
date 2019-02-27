class Label < ApplicationRecord
	has_many :artists, inverse_of: :label
	accepts_nested_attributes_for :artists, reject_if: :all_blank, allow_destroy: true
end
