class PicturesController < ApplicationController

  def new
    dessert = Dessert.find_by_name(params[:dessert_id])
    new_pic = Picture.new
    new_pic.dessert_id = dessert.id if dessert
    render :json => new_pic, :status => :ok
  end

end
