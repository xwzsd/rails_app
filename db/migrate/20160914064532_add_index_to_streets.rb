class AddIndexToStreets < ActiveRecord::Migration
  def change
  	add_index :streets, :street_name, unique: true
  end
end
