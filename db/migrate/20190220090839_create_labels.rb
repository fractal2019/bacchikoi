class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.integer :label_name, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
