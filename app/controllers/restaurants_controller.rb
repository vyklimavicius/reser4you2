class RestaurantsController < ApplicationController

  before_action :get_restaurant, only: [:show, :edit, :update, :destroy]

  #------------------------Show all restaurants------------------

  def index
    @restaurants = Restaurant.all
  end

  #------------------------Create a new Restaurant---------------

  def new
    @restaurant = Restaurant.new
  end

  def create
    # binding.pry
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.valid?
    redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  #-----------------------Restaurant path--------------------------

  def show
    
    # @restaurant = Restaurant.find(params[:id])
  end

  #-----------------------Edit Restaurant--------------------------

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  #-----------------------Delete Restaurant------------------------

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end



  private

  def get_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end

end
