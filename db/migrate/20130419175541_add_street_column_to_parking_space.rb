class AddStreetColumnToParkingSpace < ActiveRecord::Migration
  def change
    add_column :parking_spaces, :street, :string
  end
end
