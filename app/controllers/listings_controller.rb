class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create(listing_params)

    if listing.persisted?
      redirect_to root_path
    else
      redirect_to new_listing_path, notice: "Please fill in all fields"
  end
end

  private
    def listing_params
      params.require(:listing).permit(:name, :location, :description, :availability, :email, :phone_number)
    end
    
end