class PicturesController < ApplicationController

  def new
    dessert = Dessert.find_by_name(params[:dessert_id])
    @new_pic = Picture.new
    @new_pic.dessert_id = dessert.id if dessert
    @new_pic
  end

  def create
    Picture.create(picture_params)
  end

  def update
    main = Picture.find_by_id(params[:id])
    main.set_as_main.save
    main.dessert.reset_view_count
  end

  def destroy
    Picture.find_by_id(params[:id]).destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :dessert_id, :picture_url)
  end
end
