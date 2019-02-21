class CreatePurchaseContents < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_contents do |t|
      t.integer :purchase_unit_price
      t.integer :product_id
      t.integer :item_quantity
      t.integer :purchase_history_id

      t.timestamps
    end
  end
end
