class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user: params[:user])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path
    else 
      redirect_to login_path, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out"
  end
end
