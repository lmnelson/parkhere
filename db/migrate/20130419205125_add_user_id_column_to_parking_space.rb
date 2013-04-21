class AddUserIdColumnToParkingSpace < ActiveRecord::Migration
  def change
    add_column :parking_spaces, :user_id, :integer
  end
end
