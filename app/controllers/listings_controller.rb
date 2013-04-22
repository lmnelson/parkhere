class ListingsController < ApplicationController
before_filter :authenticate_user!, only: [:create, :destroy] 


	def index
		@body_id = "listings"
	  @listings = Listing.all
	  @json = @listings.to_gmaps4rails do |listing, marker|
	  	marker.infowindow render_to_string(partial: "infowindow", locals: {listing: listing})
	  	marker.title "#{listing.street}"
	  	marker.json({ price: listing.price })
	  	marker.picture({picture: "http://mapicons.nicolasmollet.com/wp-content/uploads/mapicons/shape-default/color-f7052d/shapecolor-color/shadow-1/border-dark/symbolstyle-white/symbolshadowstyle-dark/gradient-no/parking.png",
	  									width: 32,
	  									height: 40 }) 
		end
	end

	def create
		@listing = current_user.listings.build(params[:listing])
		if @listing.save
      flash[:success] = "Listing Created"
      redirect_to current_user
    else
      redirect_to current_user
    end
	end

	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
    redirect_to current_user
	end
end

