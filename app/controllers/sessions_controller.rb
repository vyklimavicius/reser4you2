class SessionsController < ApplicationController


  def new
    render :new
  end

  def create
    #authenticate method comes from has_secure_password
    @user = User.find_by(username: params[:session][:username])
    #if @user is true
    if @user && @user.authenticate(params[:session][:password])
      # session[:user_id] = @user.id
      log_in @user
      redirect_to user_path(@user)
    else
      flash.now[:errors] = "The Username/Password is incorrect!"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end

end
