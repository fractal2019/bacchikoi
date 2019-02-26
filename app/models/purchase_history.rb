class PurchaseHistory < ApplicationRecord
	has_many :purchase_contents, dependent: :destroy
	belongs_to :user

	enum delivery_status:{受付: 0,商品準備中: 1,出荷済: 2,キャンセル: 3}
end
