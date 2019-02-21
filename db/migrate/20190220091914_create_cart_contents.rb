class CreateCartContents < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_contents do |t|
      t.integer :item_quantity
      t.integer :carts_id

      t.timestamps
    end
  end
end