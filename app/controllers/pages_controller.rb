class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def check_user_status
    if @current_user.status == "inactive"
    #destroy user session
    redirect_to new_session_path
    end
  end

  def home
    @disable_nav = true
  end

  def profile
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end

  def map

  end
end
