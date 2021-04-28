class ChangePhoneNumberTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :addresses, :phone, :text

  end
end
