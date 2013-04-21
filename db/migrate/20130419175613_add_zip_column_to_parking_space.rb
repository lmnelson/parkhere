class AddZipColumnToParkingSpace < ActiveRecord::Migration
  def change
    add_column :parking_spaces, :zip, :string
  end
end
