class DessertsController < ApplicationController

  def index
    @desserts = Dessert.all_items(params[:admin_id])
  end

  def show
    @dessert = Dessert.find_by_name(params[:id])
    # @dessert.increment_views unless params[:admin_id]
    @dessert
  end

  def new
    @new_dessert = Dessert.new
  end

  def create
    @new_dessert = Dessert.new(dessert_params)
    @new_dessert.save
  end

  def update
    dessert = Dessert.find(params[:id])
    dessert.update(dessert_params)
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end


  def destroy
    Dessert.find(params[:id]).destroy
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :category, :price, :ingredients, :description, :disable)
  end
end
