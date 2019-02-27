class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :type_name, default: 0, null: false, limit: 1
      t.integer :price
      t.integer :number_of_stock
      t.integer :artist_id
      t.string :jacket_image_id
      t.datetime :deleted_at
      t.text :product_introduction
      t.string :product_name
      t.text :staff_comment


      t.timestamps
    end
  end
end
