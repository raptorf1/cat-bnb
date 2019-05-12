class OffersController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.new(offer_params)
    @offer.listing_id = @listing.id
    @offer.save

    if @offer.persisted?
      redirect_to root_path
    else
      redirect_to listing_path(@listing), notice: "Please fill in all fields correctly"
    end
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(status: "accepted")
  end


  private
  def offer_params
    params.require(:offer).permit(:name, :email, :location, :price, :status)
  end

end
