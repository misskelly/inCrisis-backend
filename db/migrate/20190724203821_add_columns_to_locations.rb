class AddColumnsToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :website, :string
    add_column :locations, :logo, :string
  end
end
