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

  def pending
    chatroom = Chatroom.find(params[:chatroom])
    booking = Booking.find(params[:booking])
    booking.status = "pending"
    booking.save
    redirect_to chatroom_path(chatroom)
  end

  def confirm
    chatroom = Chatroom.find(params[:chatroom])
    booking = Booking.find(params[:booking])
    booking.status = "confirmed"
    booking.save
    redirect_to chatroom_path(chatroom)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end
end
