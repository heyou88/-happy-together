class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def map
    @offers = Offer.geocoded
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: {offer: offer}),
        image_url: helpers.asset_url("dog-food.png")
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @user = @offer.user
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(set_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private
    def set_params
      params.require(:offer).permit(:title, :description, :address, :pet, :pet_name, :pet_description, :start_date, :end_date, :neighborhood)
    end
end
