class ChangePhoneNumberType < ActiveRecord::Migration[6.1]
  def change
    change_column :addresses, :phone, :numeric
  end
end
