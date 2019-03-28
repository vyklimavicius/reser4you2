class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to user_path(current_user.id)
  end






  private


  def review_params
    params.require(:review).permit(:restaurant_id, :review)
  end

end
