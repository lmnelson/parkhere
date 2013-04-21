class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.float :latitude
      t.float :longitude
      t.text :description
      t.integer :duration
      t.integer :user_id
      t.string :city
      t.string :street

      t.timestamps
    end
  end
end
