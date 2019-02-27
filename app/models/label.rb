class Label < ApplicationRecord
	has_many :artists, inverse_of: :label
	accepts_nested_attributes_for :artists, reject_if: :all_blank, allow_destroy: true

	enum label_name:{ユニバーサルミュージック: 0,ワーナーミュージックジャパン: 1,ソニーミュージックレーベルズ: 2,アニプレックス: 3, ポニーキャニオン: 4}

end
