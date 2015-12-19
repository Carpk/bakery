class PicturesController < ApplicationController
  respond_to :json, :html

  def new
    dessert = Dessert.find_by_name(params[:dessert_id])
    new_pic = Picture.new
    new_pic.dessert_id = dessert.id if dessert
    puts "PARAMS: #{new_pic.inspect}"
    render :json => new_pic, :status => :ok
  end

  def create
    Picture.create(picture_params)
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :dessert_id, :picture_url)
  end
end
