class SessionController < ApplicationController


  def create
    user = Admin.find_by(username: params[:username])
    if user && user.password == params[:password]
      session[:user] = user.id
      redirect_to admin_desserts_path(user.id)
    else
      redirect_to root_path
    end
    # redirect_to log_in_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
