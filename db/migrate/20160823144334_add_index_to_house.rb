class AddIndexToHouse < ActiveRecord::Migration
  def change
  	add_index :houses, [:house_number, :street_id]
  end
end
