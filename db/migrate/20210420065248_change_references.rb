class ChangeReferences < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :users_id,:user_id
    rename_column :line_items, :orders_id, :order_id
    rename_column :line_items, :products_id, :product_id
  end
end
