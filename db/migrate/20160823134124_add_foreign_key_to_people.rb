class AddForeignKeyToPeople < ActiveRecord::Migration
  def change
  	add_foreign_key :people, :houses, column: :house_id
  end
end
