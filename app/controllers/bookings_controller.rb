class BookingsController < ApplicationController

  def new
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end

  # def create
  #   @offer = Offer.find(params[:id])
  #   @booking.user = current_user
  #   @booking.offer = @offer
  #   if @booking.save
  #     redirect_to offers_path, notice: "Booking was successfully create"
  #   else


  # end

  def update
    @booking = Booking.find(params[:id])
    @booking.confirmed!
    @booking.save
    redirect_to offers_path, notice: "Booking was successfully create"
  end
end
