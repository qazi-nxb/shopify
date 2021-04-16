class CreateLineitems < ActiveRecord::Migration[6.1]
  def change
    create_table :lineitems do |t|
      t.float :per_price
      t.integer
      :quantity
      t.string :total_price
      t.references :product_id, null: false, foreign_key: true
      t.references :order_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
