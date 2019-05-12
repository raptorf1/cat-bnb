class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    listing = Listing.new(listing_params)
    listing.user_id = current_user.id
    listing.save
    
    #binding.pry

    if listing.persisted?
      redirect_to root_path
    else
      redirect_to new_listing_path, notice: "Please fill in all fields"
  end
end

  private
    def listing_params
      params.require(:listing).permit(:pet_name, :pet_location, :pet_description, :start_date, :end_date, :pet_picture)
    end
    
end