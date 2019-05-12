class OffersController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.create(offer_params)

    if @offer.persisted?
      redirect_to root_path
    else
      redirect_to listing_path(@listing), notice: "Please fill in all fields correctly"
    end
  end

  # def status_accept
  #   @listing = Listing.find(params[:listing_id])
  #   @offer = @listing.offers.find(params[:id])
  #   @offer.update(status: "accepted")
  # end

  def update
    #@listing = Listing.find(params[:listing_id])
    @offer = Offer.find(params[:id])
    @offer.update(status: "accepted")
    
  end


  private
  def offer_params
    params.require(:offer).permit(:name, :email, :location, :price, :status)
  end

end
