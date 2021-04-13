class CreateAdminOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_orders do |t|
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
