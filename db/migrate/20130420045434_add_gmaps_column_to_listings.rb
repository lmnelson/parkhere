class AddGmapsColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :gmaps, :boolean
  end
end
