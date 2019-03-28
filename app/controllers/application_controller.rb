class ApplicationController < ActionController::Base
  #Every method here exists on all controllers

  protect_from_forgery with: :exception
  include SessionsHelper
  # helper_method :logged_in?, :current_user

  def authorized
    redirect_to login_path unless logged_in?
  end

  # def current_user
  #   if session[:user_id]
  #     @current_user ||= User.find_by(id: session[:user_id])
  #   end
  # end
  #
  # def logged_in?
  #   !!current_user
  #   # return either true or false
  # end


end
