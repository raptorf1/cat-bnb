class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    offer = Offer.new(offer_params)
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.new(offer_params)
    @offer.listing_id = @listing.id
    @offer.save

    if @offer.persisted?
      redirect_to root_path
    else
      redirect_to listing_path(@listing), notice: "Please fill in all fields"
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:name, :email, :location, :price, :status)
  end

end
