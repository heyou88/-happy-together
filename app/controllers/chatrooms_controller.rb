class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
  end

  def create
    @chatroom = Chatroom.new
    flat_owner = User.find(params["user_pet_owner"])
    @chatroom.name = "Messenger"
    @chatroom.flat_owner = flat_owner
    @chatroom.pet_sitter = current_user
    @booking = Booking.new
    @booking.user = current_user
    @booking.offer_id = params[:offer]
    @booking.save
    @chatroom.booking = @booking
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
