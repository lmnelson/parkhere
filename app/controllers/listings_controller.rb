class ListingsController < ApplicationController
before_filter :authenticate_user!

	def index
		@body_id = "listings" 
	  @listings = Listing.all
	  @json = @listings.to_gmaps4rails 
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

