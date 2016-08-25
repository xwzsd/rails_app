class AddHouseIdToCustomHouses < ActiveRecord::Migration
  def change
    add_column :custom_houses, :house_id, :integer
  end
end
