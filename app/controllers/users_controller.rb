class UsersController < ApplicationController

  # layout "_navbar"
  before_action :get_user, only: [:show, :edit, :update, :destroy]

  #------------------------Show all Users------------------

  def index
    @users = User.all
  end

  #------------------------Create a new User---------------

  def new
    @user = User.new
    # @reservation = Reservation.new
  end

  def create
    # binding.pry
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
    redirect_to user_path(@user)
    else
      render :new
    end
  end

  #-----------------------User path--------------------------

  def show
    @restaurants = Restaurant.all
    # @user = User.find(params[:id])
  end

  #-----------------------Edit User--------------------------

  def edit
    # binding.pry
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  #-----------------------Delete User------------------------

  def destroy
    @user.destroy
    redirect_to users_path
  end



  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end

end
