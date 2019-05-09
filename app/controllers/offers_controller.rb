class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new(params[:listing_id])
  end

  private
  def offer_params
    params.require(:offer).permit(:listing_id)
  end
end
