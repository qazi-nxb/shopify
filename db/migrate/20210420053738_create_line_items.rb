class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.float :per_price
      t.integer :quantity
      t.string :total_price
      t.references :products, null: false, foreign_key: true
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
