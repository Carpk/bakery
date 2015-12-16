class DessertsController < ApplicationController

  def index
    @desserts = Dessert.all
  end

  def show
    @desserts = Dessert.find_by_name(params[:id])
  end

  def new
    @new_dessert = Dessert.new
  end

  def create
    @new_dessert = Dessert.new(dessert_params)
    @new_dessert.save
  end

  def update
    # dessert = Dessert.find(params[:id])
    # dessert.update(dessert_params)
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end


  def destroy
    deleting_item = Dessert.find(params[:id])
    deleting_item.pictures.map {|pic| pic.destroy}
    deleting_item.destroy
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :category, :price, :ingredients, :description)
  end
end
