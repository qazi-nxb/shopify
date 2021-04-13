class CreateAdminLineitems < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_lineitems do |t|
      t.integer :quantity
      t.float :price
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
