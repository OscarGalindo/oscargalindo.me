class AdminController < ApplicationController
  def index
    if session[:user_id]
      redirect_to user_path
    else
      redirect_to login_path
  end
end
