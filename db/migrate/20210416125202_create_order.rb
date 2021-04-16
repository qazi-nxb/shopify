class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
