class AdminController < ApplicationController

  # def index

  # end

  def create
    user = Admin.find_by(username: params[:username])
    if user.password == params[:password]
      session[:user] = user.id
      redirect_to admin_desserts_path(user.id)
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
