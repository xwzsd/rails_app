class AddIndexToCustomHouse < ActiveRecord::Migration
  def change
  	add_index :custom_houses, [:custom_name, :custom_value]
  end
end
