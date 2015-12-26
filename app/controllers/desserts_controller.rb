class DessertsController < ApplicationController

  def index
    @desserts = Dessert.filtered_view
  end

  def show
    @dessert = Dessert.find_by_name(params[:id])
    @dessert.increment_views.save
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
    deleting_item = Dessert.find(params[:id])
    deleting_item.delete_pics
    deleting_item.destroy
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :category, :price, :ingredients, :description, :disable)
  end
end
