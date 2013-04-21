class AddCityColumnToParkingSpace < ActiveRecord::Migration
  def change
    add_column :parking_spaces, :city, :string
  end
end
