class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @disable_nav = true
  end

  def profile
    @user = current_user
    # @user = User.find(params[:id])
  end
end
