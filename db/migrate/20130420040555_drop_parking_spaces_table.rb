class DropParkingSpacesTable < ActiveRecord::Migration
  def up
  	drop_table :parking_spaces
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
