class AddIndexToPeople < ActiveRecord::Migration
  def change
  	add_index :people, :name
  end
end
