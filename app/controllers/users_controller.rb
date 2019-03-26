class UsersController < ApplicationController

  # layout "_navbar"

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end

end
