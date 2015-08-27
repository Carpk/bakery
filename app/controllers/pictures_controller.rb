class PicturesController < ApplicationController

  def new
    puts "params are:"
    puts params
    new_pic = Picture.new
    new_pic.dessert_id = "12"
    render :json => new_pic, :status => :ok
  end

end
