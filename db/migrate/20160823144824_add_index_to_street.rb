class AddIndexToStreet < ActiveRecord::Migration
  def change
  	add_index :streets, [:street_name]
  end
end
