class UserController < ApplicationController
  before_action :authenticate_user!
  # @username = current_user.email.split('@').first
  def index
    @reviews = Review.all
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @urev = @user.reviews
  end

end
