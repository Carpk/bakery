class PicturesController < ApplicationController

  def new
    dessert = Dessert.find_by_name(params[:dessert_id])
    new_pic = Picture.new
    new_pic.dessert_id = dessert.id if dessert
    render :json => new_pic, :status => :ok
  end

  def create
    puts params
    pic = Picture.new(picture_params)
    if pic.save
      puts "pic saved!"
    else
      puts "pic did not save."
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :dessert_id, :picture_url)
  end
end
