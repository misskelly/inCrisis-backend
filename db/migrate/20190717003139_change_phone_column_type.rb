class ChangePhoneColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :phone, :bigint
  end
end
