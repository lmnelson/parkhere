class Listing < ActiveRecord::Base
  attr_accessible :city, :description, :duration, :latitude, :longitude, :street, :email, :username, :price

  belongs_to :user
  acts_as_gmappable
  def gmaps4rails_address
    "#{city}, #{street}"
  end
end
