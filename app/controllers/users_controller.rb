class UsersController < ApplicationController
before_filter :authenticate_user!
	
	def index
		@users = User.all
	end
	
	def show
    @user = User.find(params[:id])
		@listings = @user.listings()
    @listing = current_user.listings.build      
	end

	def create
		@listing = @user.listings.build()
	end
end
