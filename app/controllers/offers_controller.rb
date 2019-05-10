class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new(offer_params)
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.create(offer_params)
    redirect_to root_path(@listing)
  end
  

  private
  def offer_params
    params.require(:offer).permit(:name, :email, :location, :price)
  end
end