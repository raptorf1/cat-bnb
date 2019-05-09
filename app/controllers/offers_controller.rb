class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new(offer_params)
  end

  def show
    @offer = Listing.find(params[:id])
  end
  

  private
  def offer_params
    params.require(:offer).permit(:name, :email, :location, :price)
  end
end