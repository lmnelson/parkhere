class Listing < ActiveRecord::Base
  attr_accessible :city, :description, :duration, :latitude, :longitude, :street, :email, :username, :price
	belongs_to :user
	
	validates :street, presence: true, length: { maximum: 40 }
	validates :price, presence: true, numericality: true, length: { maximum: 5}
	validates :description, length: { maximum: 140 }

	acts_as_gmappable
  def gmaps4rails_address
    "#{city}, #{street}"
  end

  def gmaps4rails_price 
  	"#{price}"
  end 
end
