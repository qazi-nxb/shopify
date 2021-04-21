class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :country
      t.string :state
      t.string :city
      t.integer :zipcode
      t.string :address_1
      t.string :address_2
      t.integer :phone

      t.timestamps
    end
  end
end
