class CreateCustomHouses < ActiveRecord::Migration
  def change
    create_table :custom_houses do |t|
      t.string :custom_name
      t.string :custom_value

      t.timestamps null: false
    end
  end
end
