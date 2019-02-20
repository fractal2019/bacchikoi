class CreatePurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_histories do |t|
      t.integer :user_id
      t.string :destination_postal_code
      t.text :destination_address
      t.integer :delivery_status
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
