class Label < ApplicationRecord
	has_many :products

	enum label_name:{ユニバーサルミュージック: 0,ワーナーミュージックジャパン: 1,ソニーミュージックレーベルズ: 2,アニプレックス: 3, ポニーキャニオン: 4}
end
