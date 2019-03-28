class ReservationsController < ApplicationController

  # before_action :get_reservation, only: [:show, :edit, :update, :destroy]


  def index
    @reservations = Reservation.all
  end

  def create
    @reservations = Reservation.create(reservation_params)
    redirect_to user_path(current_user.id)
  end

  # def






  private

  def get_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :review_id, :date)
  end

end
