class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :type_name
      t.integer :price
      t.integer :number_of_stock
      t.integer :label_id
      t.datetime :deleted_at
      t.text :product_introduction
      t.text :staff_coment

      t.timestamps
    end
  end
end
