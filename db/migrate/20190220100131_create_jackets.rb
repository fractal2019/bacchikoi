class CreateJackets < ActiveRecord::Migration[5.2]
  def change
    create_table :jackets do |t|
      t.string :jacket_image_id
      t.integer :product_id

      t.timestamps
    end
  end
end
