class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :phone, default: nil
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :office_hours
      t.float :lat 
      t.float :lng

      t.timestamps
    end
  end
end
