class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_at, :datetime
    add_column :users, :tel, :integer
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :name_kana, :string
  end
end
