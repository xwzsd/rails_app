class AddIndexToHouse < ActiveRecord::Migration
  def change
  	add_index :houses, [:house_number]
  end
end
