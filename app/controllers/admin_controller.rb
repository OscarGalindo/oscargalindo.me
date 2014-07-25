class AdminController < ApplicationController
  def index
    redirect_to login_path unless session[:user_id]
  end
end
