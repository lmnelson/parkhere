class RemoveAddressFromParkingSpace < ActiveRecord::Migration
  def up
    remove_column :parking_spaces, :address
  end

  def down
    add_column :parking_spaces, :address, :string
  end
end
