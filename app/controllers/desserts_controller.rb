class DessertsController < ApplicationController

  def index
    @desserts = Dessert.all
  end

  def show
    @desserts = Dessert.find_by_name(params[:id])
  end

  def new
    token = S3provider.new.s3_access_token
    render :json => token, :status => :ok
  end

  def create
    # puts dessert_params
    # new_dessert = Dessert.new(dessert_params)
    # if new_dessert.save
    #   redirect_to admin_desserts_path(session[:user])
    # end
  end

  def update
    # dessert = Dessert.find(params[:id])
    # dessert.update(dessert_params)
    # redirect_to admin_desserts_path(session[:user])
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end


  def destroy
    # Dessert.find(params[:id]).destroy
    # puts params
    # redirect_to admin_desserts_path(session[:user])
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :description)
  end
end
