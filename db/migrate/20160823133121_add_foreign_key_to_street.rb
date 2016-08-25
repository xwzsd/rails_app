class AddForeignKeyToStreet < ActiveRecord::Migration
  def change
  	add_foreign_key :streets, :houses, column: :house_id
  end
end
