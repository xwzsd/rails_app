class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :house_number
      t.text :custom_fields, array: true, default: []
      t.integer :person_id
      t.integer :street_id
      t.timestamps null: false
     
    end
  end
end
