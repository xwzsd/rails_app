class AddForeignKeyToHouse < ActiveRecord::Migration
  def change
  	add_foreign_key :houses, :streets, column: :street_id
  end
end
